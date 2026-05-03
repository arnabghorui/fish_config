function openDoc
    set -l selected_file (find ~/Documents/IIIT ~/Downloads -type f -not -path '*/[@.]*' | fzf --layout=reverse --border)

    if test -z "$selected_file"
        # echo "No file selected or operation cancelled."
        return 1
    else
        xdg-open "$selected_file" >/dev/null 2>&1
        return 0
    end
end
