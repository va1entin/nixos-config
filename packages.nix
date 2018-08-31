{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> {config = config.nixpkgs.config;};
  old = import <old> {config = config.nixpkgs.config;};
in {

hardware.pulseaudio.enable = true;

hardware.opengl.driSupport32Bit = true;

nixpkgs.config = {
  allowUnfree = true;
  firefox.drmSupport = true;
  packageOverrides = pkgs: {
    tor-browser-bundle-bin = pkgs.tor-browser-bundle-bin.override { pulseaudioSupport = true; };
  pulseaudio = true;
  };
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

  old.terminator

  atom
  abcde
  anydesk
  asciidoctor
  ark
  audacity
  bind
  byobu
  cdparanoia
  chromium
  curl
  dolphinEmu
  ffmpeg
  file
  firefox
  fzf
  gcc
  gimp
  git
  gnupg
  gparted
  gwenview
  htop
  inkscape
  iperf
  jpegoptim
  kate
  kcalc
  kdeconnect
  kdenlive
  keepassx-community
  libreoffice-fresh
  lm_sensors
  lsof
  man
  mpv
  mtr
  networkmanager
  networkmanager-openvpn
  networkmanager-vpnc
  ncdu
  nmap
  ntfs3g
  oh-my-zsh
  okular
  p7zip
  pandoc
  pavucontrol
  pcsxr
  pdftk
  plasma-nm
  python
  python3
  rclone
  rsync
  screen
  spectacle
  steam
  thunderbird
  tmux
  tor-browser-bundle-bin
  tree
  unetbootin
  unrar
  unzip
  usbutils
  vim
  vlc
  weechat
  wget
  which
  youtube-dl
  zim
  zip
  zsh
 ];
}
