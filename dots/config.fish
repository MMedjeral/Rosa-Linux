# exit if not in interactive mode
status -i || exit

set fish_greeting ""

alias ls='ls -aF''
alias la='ls -la'
alias up='sudo dnf --refresh upgrade'

# color
set fish_color_normal brwhite
set fish_color_command brgreen
set fish_color_param brwhite
set fish_color_error brred
set fish_color_quote bryellow

# vi-mode
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

# env
export PATH="$PATH:$HOME/.local/bin"

# comment to disable vi mode
fish_vi_key_bindings

# starship
#starship init fish | source
