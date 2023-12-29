**As of 2021 this repo is not actively maintained anymore! I have switched from NixOS to Arch Linux, specifically [EndeavourOS](https://endeavouros.com/). There is a new config repo for my setup [here](https://github.com/va1entin/arch-config).**

# nixos-config

This repo contains my NixOS configuration. I've split it up into different files to keep it organized and easily readable.

To use the config simply copy it to `/etc/nixos/configuration.nix`
Make sure to backup your `configuration.nix`, if needed! The following commands will overwrite it.

``` bash
git clone git@github.com:va1entin/nixos-config.git
cd nixos-config
sudo cp configuration.nix /etc/nixos/configuration.nix
```
