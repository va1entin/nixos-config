{ config, pkgs, ... }:
let
  unstable = import <nixpkgs-unstable> {config = config.nixpkgs.config;};
in {

hardware.pulseaudio.enable = true;

hardware.opengl.driSupport32Bit = true;

nixpkgs.config = {
  allowUnfree = true;
  firefox.drmSupport = true;
  packageOverrides = pkgs: rec {
   tor-browser-bundle-bin = pkgs.tor-browser-bundle-bin.override { mediaSupport = true; };
   # Otherwise jekyll-paginate and more are missing
   jekyll = pkgs.jekyll.override { withOptionalDependencies = true; };
 };
};

programs.adb.enable = true;

#Required for pulseeffects
programs.dconf.enable = true;

services.openssh.enable = true;
#services.printing.enable = true;


virtualisation = {
  virtualbox.host = {
    enable = true;
# currently requires virtualbox to built
#    enableExtensionPack = true;
  };
  docker.enable = true;
};

environment.systemPackages = with pkgs; [

# Unstable
unstable.youtube-dl

# Base
  atom
  abcde
#  android-studio
  ansible
#  anydesk
  appimage-run
  asciidoctor
  audacity
  autokey
  bind
  byobu
  cdparanoia
  chromium
  cpulimit
  curl
  ffmpeg
  file
  filelight
  firefox
  firefox-devedition-bin
  fzf
  gcc
  gimp
  git
  gnumake
  gnupg
  google-cloud-sdk
  gparted
  heroku
  hexchat
  htop
  inkscape
  iperf
  jekyll
  jpegoptim
  jq
  keepassx-community
  konsole
  libreoffice-fresh
  lm_sensors
  lsof
  man
#  mpv
  mtr
  networkmanager
  networkmanager-openvpn
  networkmanager-vpnc
  nextcloud-client
  ncdu
  nmap
  ntfs3g
  oh-my-zsh
  openssl
  p7zip
  pandoc
  pavucontrol
  pciutils
  pdftk
  pulseeffects
  jupyter
  ncurses
  rclone
  rsync
  screen
  signal-desktop
  teamspeak_client
  teamviewer
  thunderbird
  tmux
  traceroute
  tor-browser-bundle-bin
  tree
  unetbootin
  unrar
  unzip
  usbutils
  vim
  visidata
  vlc
  wget
  which
  zim
  zip
  zsh

# Python
  pipenv
  (python3.withPackages(ps: with ps; [
    aiohttp
    async-timeout
    flask
    folium
    python-gnupg
    h5py
    Keras
    ipython
    matplotlib
    mutagen
    notebook
    numpy
    opencv4
    pandas
    pydot
    pynacl
    pytest
    pytestcov
    scikitlearn
    tensorflow
    theano
    toolz
    websockets
  ]))

# Gnome
  gnome3.gnome-tweaks

# Cuda
#  tensorflow-gpu
#  cudatoolkit

# KDE
#  ark
#  spectacle
#  plasma-nm
#  okular
#  kate
#  kcalc
#  kdeconnect
#  kdenlive
#  gwenview

# Gaming
#  pcsxr
#  steam
#  dolphinEmu

 ];

}
