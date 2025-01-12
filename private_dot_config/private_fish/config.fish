if status is-interactive
    # Environment
    set -Ux EDITOR nvim
    set -Ux XDG_CACHE_HOME ~/.cache
    set -Ux XDG_CONFIG_HOME ~/.config
    set -Ux XDG_DATA_HOME ~/.local/share
    set -Ux XDG_BIN_HOME ~/.local/bin
    fish_add_path ~/.local/bin
    fish_add_path $XDG_CONFIG_HOME/emacs/bin

    # homebrew
    eval (/opt/homebrew/bin/brew shellenv)

    # Helpers
    if type -q scmpuff
        scmpuff init -s --shell=fish | source
    end

    # Aliases
    alias g="git"
    alias gps="git push"
    alias gc="git commit"
    alias grm="git rm"
    alias vim="nvim"
    alias rm="rm -i"
    alias cp="cp -i"
    alias mv="mv -i"
    alias mkdir="mkdir -p"
    alias watch="watch -n05"
    alias q="exit"
    alias exa="eza --group-directories-first"
    alias l="eza -1"
    alias la="eza -la"
    alias ll="eza -lg"
    alias ls="eza"
    alias ppjson="stdbuf -oL jq -rC '.'  | sed 's/\\n/\n/g; s/\\t/\t/g'"
end
