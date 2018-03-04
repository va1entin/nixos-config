{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> {config = config.nixpkgs.config;};
in {

hardware.pulseaudio.enable = true;

nixpkgs.config = {
  allowUnfree = true;
  firefox.drmSupport = true;
};

programs.adb.enable = true;

services.openssh.enable = true;
#services.printing.enable = true;

virtualisation = {
  virtualbox.host.enable = true;
  docker.enable = true;
};

# List packages installed in system profile. To search by name, run:
# $ nix-env -qaP | grep wget
environment.systemPackages = with pkgs; [

  unstable.keepassx-community
  unstable.youtube-dl

  abcde
  atom
  ark
  asciidoctor
  audacity
  bind
  byobu
  chromium
  curl
  file
  firefox
  gcc
  gimp
  git
  gnupg
  gparted
  gwenview
  htop
  inkscape
  kate
  kcalc
  libreoffice
  lm_sensors
  lsof
  man
  mpv
  nmap
  ntfs3g
  oh-my-zsh
  okular
  p7zip
  pavucontrol
  python
  python3
  rclone
  rsync
  screen
  spectacle
  terminator
  thunderbird
  tmux
  tor-browser-bundle-bin
  unetbootin
  unzip
  vim
  vlc
  weechat
  wget
  which
  zim
  zip
  zsh
 ];
}