{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    layout = "de";
    videoDrivers = [ "nvidia" ];

    desktopManager = {
      gnome3.enable = true;
      # plasma5.enable = true;
    };

    displayManager = {
      gdm = {
        enable = true;
        wayland = false;
      };
    };
  };
}
