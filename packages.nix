{ config, pkgs, ... }:
let
  unstable = import <nixpkgs-unstable> {config = config.nixpkgs.config;};
in {
  programs = {
    adb.enable = true;

    gnome-terminal.enable = true;

    # Required for pulseeffects
    dconf.enable = true;
  };

  environment.systemPackages = with pkgs; [

    # Get from unstable
    unstable.youtube-dl

    # Broken
    # autokey

    # Browser
    chromium
    firefox
    tor-browser-bundle-bin
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
    # mumble
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
    remmina
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
      pycodestyle
      pydot
      pynacl
      pytest
      pytestcov
      scikitlearn
      #tensorflow
      theano
      toolz
      websockets
      caldav
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
    sshpass
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
    libwebp
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
    pwgen
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
    yamllint
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
