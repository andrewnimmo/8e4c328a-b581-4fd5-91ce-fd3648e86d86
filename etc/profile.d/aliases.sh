#
if [ "x${BASH_VERSION-}" != x -a "x${PS1-}" != x ]; then
    alias tmux='tmux attach || tmux new'
fi
