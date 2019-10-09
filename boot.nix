{ pkgs, ... }:

{
boot = {
  loader.systemd-boot.enable = true;
  loader.efi.canTouchEfiVariables = true;
  initrd.luks.devices = [
  {
    name = "root";
    device = "/dev/disk/by-uuid/520f0396-e995-4a34-a798-e44fac405489";
    preLVM = true;
  }
];

  cleanTmpDir = true;

#  kernelPackages = pkgs.linuxPackages_5_0;
};
}
