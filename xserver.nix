{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    layout = "de";
    videoDrivers = [ "nvidia" ];
  #  desktopManager.plasma5.enable = true;
    desktopManager.gnome3.enable = true;
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = false;
  };
}
