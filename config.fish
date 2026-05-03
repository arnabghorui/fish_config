
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/arnab/anaconda3/bin/conda
    eval /home/arnab/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/arnab/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/arnab/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/arnab/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

# yazi configuration

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Disabling the greeting message
set -U fish_greeting ""

# keybindings
bind \co openDoc
bind \eo openCurrentDir
bind \es fdcd
# ===========================
# starship init fish | source


