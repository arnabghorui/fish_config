function openCurrentDir
    set -l selected_file (find . -type f ! \( -iname '*.gz' \
        -o -iname '*.log' \
        -o -iname '*.o' \
        -o -iname '*.ttf' \
        -o -iname '*.ini' \
        -o -iname '*.sqlite' \
        -o -iname '*.json' \
        -o -iname '*.so' \
        -o -iname '*.list' \) \
        -not -path '*/[@.]*' \
        | fzf --layout=reverse --border)

    if test -z "$selected_file"
        return 1
    else
        xdg-open "$selected_file" >/dev/null 2>&1
        return 0
    end
end
