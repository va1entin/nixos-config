{
  services = {
    syncthing = {
      enable = true;
      user = "val";
      dataDir = "/home/val/Sync";
      configDir = "/home/val/.config/syncthing";
    };

    # Required for teamviewer client
    teamviewer.enable = true;

    openssh.enable = true;

    #printing.enable = true;
  };
}
