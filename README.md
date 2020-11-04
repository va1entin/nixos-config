# nixos-config

This repo contains my NixOS configuration. I've split it up into different files to keep it organized and easily readable.

To use the config simply symlink it at (or copy it to) `/etc/nixos/configuration.nix`
Make sure to backup your `configuration.nix`, if needed! The `ln -fs` will overwrite it.

```bash
git clone git@github.com:va1entin/nixos-config.git
cd nixos-config
sudo ln -fs configuration.nix /etc/nixos/configuration.nix
```
