if status is-interactive
    # Environment
    fish_add_path ~/.local/bin
    set -Ux EDITOR nvim
    set -Ux XDG_CACHE_HOME ~/.cache
    set -Ux XDG_CONFIG_HOME ~/.config
    set -Ux XDG_DATA_HOME ~/.local/share
    set -Ux XDG_BIN_HOME ~/.local/bin

    # Helpers
    scmpuff init -s --shell=fish | source

    # Aliases
    alias g="git"
    alias gps="git push"
    alias gc="git commit"
    alias vim="nvim"
    alias rm="rm -i"
    alias cp="cp -i"
    alias mv="mv -i"
    alias mkdir="mkdir -p"
    alias watch="watch -n05"
    alias q="exit"
    alias exa="exa --group-directories-first"
    alias l="exa -1"
    alias la="exa -la"
    alias ll="exa -lg"
    alias ls="exa"
    alias ppjson="stdbuf -oL jq -rC '.'  | sed 's/\\n/\n/g; s/\\t/\t/g'"
end
