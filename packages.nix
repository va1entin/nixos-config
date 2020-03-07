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
   tor-browser-bundle-bin = pkgs.tor-browser-bundle-bin.override { pulseaudioSupport = true; };
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
#gradle
  pciutils
  gnumake

  atom
  abcde
 # android-studio
  ansible
#  anydesk
  appimage-run
  asciidoctor
  ark
  audacity
  autokey
  bind
  byobu
  cdparanoia
  chromium
  cpulimit
  cudatoolkit
  curl
 # dolphinEmu
#  eyeD3
  ffmpeg
  file
  filelight
  firefox
  firefox-devedition-bin
  fzf
  gcc
  gimp
  git
  gnupg
  gparted
  gwenview
  hexchat
  htop
  inkscape
  iperf
  jekyll
  jpegoptim
  jq
  kate
  kcalc
#  kdeconnect
  #kdenlive
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
  unstable.nextcloud-client
  ncdu
  nmap
  ntfs3g
  oh-my-zsh
  okular
  openssl
  p7zip
  pandoc
  pavucontrol
  #pcsxr
  pdftk
#  plasma-nm
  (python3.withPackages(ps: with ps; [
    aiohttp
    async-timeout
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
#    tensorflow-gpu
    theano
    toolz
    websockets
  ]))
  pulseeffects
  jupyter
  ncurses
  rclone
  rsync
  screen
  signal-desktop
  spectacle
  #steam
  unstable.teamspeak_client
  unstable.teamviewer
  thunderbird
  tmux
  traceroute
  unstable.tor-browser-bundle-bin
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
  unstable.youtube-dl
  zim
  zip
  zsh
 ];

}
