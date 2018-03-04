{ pkgs, ... }:
{
services.xserver.displayManager.sddm = {
  enable = true;
  theme = pkgs.lib.mkForce "/mnt/sddm-theme";
  autoNumlock = true;
};
}
