if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Use starship prompt https://starship.rs
starship init fish | source
# the fuck init
# eval $(thefuck --alias)

# use vim model
fish_vi_key_bindings

# theme
set -g theme tokyonight_storm
