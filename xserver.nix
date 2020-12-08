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
        # Required for Wayland with GDM when using nvidia proprietary drivers
        # nvidiaWayland = true;
      };

      lightdm = {
        # enable = true;
        # background = "/mnt/sddm-theme/blur1.jpg";
        # autoNumlock = true;
      };
    };
  };
}
