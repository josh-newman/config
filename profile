# https://askubuntu.com/a/606882
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Note: The nix installer puts this in /etc/{bash,zsh}rc, but macOS updates delete it:
# https://github.com/NixOS/nix/issues/3616
# Duplicate here, per-user, as a workaround. 2023-01-29
# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix
