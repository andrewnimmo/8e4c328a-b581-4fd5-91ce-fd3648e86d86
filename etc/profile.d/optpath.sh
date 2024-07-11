#
for OPTPATH in /opt/*
do
    if [ -d $OPTPATH/bin ] ; then
        PATH="$OPTPATH/bin:$PATH"
    fi
    # add sbin for root
    if [ "`id -u`" -eq 0 ]; then
        if [ -d $OPTPATH/sbin ] ; then
            PATH="$OPTPATH/sbin:$PATH"
        fi
    fi
done
