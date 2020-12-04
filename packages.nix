{ config, pkgs, ... }:
let
  unstable = import <nixpkgs-unstable> {config = config.nixpkgs.config;};
in {
  programs.adb.enable = true;
  programs.gnome-terminal.enable = true;

  # Required for pulseeffects
  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [

    # Get from unstable
    unstable.youtube-dl

    # Broken
    # autokey
    # tor-browser-bundle-bin

    # Browser
    chromium
    firefox
    # firefox-devedition-bin

    # Cloud
    awscli
    google-cloud-sdk
    heroku
    kops
    kubectl
    minikube

    # Communication
    discord
    hexchat
    signal-desktop
    teamspeak_client
    thunderbird

    # Crypto
    bitcoin

    # Data
    jupyter
    visidata

    # Desktop various
    filelight
    gparted
    libreoffice-fresh
    p7zip
    zim

    # Dev
    atom
    # android-studio
    git
    gcc
    gnumake
    jekyll

    # Gnome
    gnome3.gnome-tweaks

    # Media
    abcde
    audacity
    brasero
    cdparanoia
    devede
    ffmpeg
    gimp
    handbrake
    inkscape
    # mpv
    pavucontrol
    pulseeffects
    vlc

    # Networking
    networkmanager
    networkmanager-openvpn
    networkmanager-vpnc

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
      #tensorflow
      theano
      toolz
      websockets
    ]))

    # RSAT
    ansible
    # anydesk
    teamviewer

    # Ruby
    rubyPackages.rouge

    # Security
    gnupg
    keepassx-community

    # Shell
    byobu
    konsole
    ncurses
    oh-my-zsh
    screen
    tmux
    zsh

    # Shell tools
    asciidoctor
    appimage-run
    bind
    cpulimit
    curl
    file
    fzf
    htop
    iperf
    jpegoptim
    jq
    lm_sensors
    lsof
    man
    mtr
    ncdu
    nmap
    ntfs3g
    openssl
    pciutils
    pdftk
    pandoc
    rclone
    rsync
    traceroute
    tree
    unetbootin
    unrar
    unzip
    usbutils
    vim
    wget
    which
    zip

    # Cuda
    # tensorflow-gpu
    # cudatoolkit

    # KDE
    # ark
    # spectacle
    # plasma-nm
    # okular
    # kate
    # kcalc
    # kdeconnect
    # kdenlive
    # gwenview

    # Gaming
    # pcsxr
    # steam
    # dolphinEmu
  ];
}
