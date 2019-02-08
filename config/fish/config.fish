set -U fish_user_paths $HOME/.local/bin $HOME/.cargo/bin

set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux VISUAL atom
set -Ux EDITOR $VISUAL
set -Ux TERMINAL termite
set -Ux GTK2_RC_FILES /usr/share/themes/Arc-solid/gtk-2.0/gtkrc

alias t "$TERMINAL &; disown"
alias e "$VISUAL"

alias paci 'sudo pacman -S'
alias pacd 'sudo pacman -Rns'
alias pacu 'sudo pacman -Syu'
alias pacr 'sudo pacman -Sy'
alias pacs 'pacman -Ss'
alias pacq 'pacman -Qs'
alias pacorphans 'pacman -Qqdt'

set fish_greeting

function fish_prompt
    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end

    echo -n -s "$__fish_prompt_cwd" (prompt_pwd) (__fish_vcs_prompt) "$__fish_prompt_normal" '> '
end
