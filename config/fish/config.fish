if set -q TERMINAL
    alias t "$TERMINAL"
end
if set -q VISUAL
    alias e "$VISUAL"
end

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
