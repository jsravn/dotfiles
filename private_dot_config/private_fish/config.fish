if status is-interactive
    fish_add_path ~/.local/bin
    set -Ux EDITOR nvim
    set -Ux XDG_CACHE_HOME ~/.cache
    set -Ux XDG_CONFIG_HOME ~/.config
    set -Ux XDG_DATA_HOME ~/.local/share
    set -Ux XDG_BIN_HOME ~/.local/bin
end
