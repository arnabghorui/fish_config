function fdcd
    set dir (cd ~; and fd -0 --type d --ignore-file ~/.config/fd/ignore | fzf --read0)

    if test -n "$dir"
        cd ~/$dir
    else
        return 1
    end
end
