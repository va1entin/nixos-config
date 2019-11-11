{ config, pkgs, ... }:
let
  unstable = import <nixpkgs-unstable> {config = config.nixpkgs.config;};
in {

hardware.pulseaudio.enable = true;

hardware.opengl.driSupport32Bit = true;

nixpkgs.config = {
  allowUnfree = true;
  firefox.drmSupport = true;
#Broken in 18.09+
#  packageOverrides = pkgs: {
#   tor-browser-bundle-bin = pkgs.tor-browser-bundle-bin.override { pulseaudioSupport = true; };
#  pulseaudio = true;
# };
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
  curl
 # dolphinEmu
  ffmpeg
  file
  filelight
  firefox
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
  jpegoptim
  jq
  kate
  kcalc
  kdeconnect
  #kdenlive
  keepassx-community
#  latte-dock
  libreoffice-fresh
  lm_sensors
  lsof
  man
  mpv
  mtr
  networkmanager
  networkmanager-openvpn
  networkmanager-vpnc
  nextcloud-client
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
  (python3.withPackages(ps: with ps; [ folium opencv4 pandas ipython notebook numpy toolz pytestcov pytest pynacl ]))
  pulseeffects
  jupyter
  ncurses
  rclone
  rsync
  screen
  spectacle
  #steam
  unstable.teamspeak_client
  teamviewer
  thunderbird
  tmux
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
