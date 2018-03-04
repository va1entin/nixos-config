# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      /home/val/git/nixos-config/boot.nix
      /home/val/git/nixos-config/cron.nix
      /home/val/git/nixos-config/display-manager.nix
      /home/val/git/nixos-config/i18n.nix
      /home/val/git/nixos-config/networking.nix
      /home/val/git/nixos-config/nix.nix
      /home/val/git/nixos-config/packages.nix
      /home/val/git/nixos-config/users.nix
      /home/val/git/nixos-config/xserver.nix
      /home/val/git/nixos-config/zsh.nix
    ];

  system.autoUpgrade.enable = true;
  system.autoUpgrade.dates = "19:00";

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "17.09"; # Did you read the comment?

}
