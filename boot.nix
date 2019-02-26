{ pkgs, ... }:

{
boot = {
  loader.systemd-boot.enable = true;
  loader.efi.canTouchEfiVariables = true;

  initrd.luks.devices = [
  {
    name = "root";
    device = "/dev/disk/by-uuid/48b1e17b-296f-45d0-989b-0eab65b872ff";
    preLVM = true;
  }
];

  cleanTmpDir = true;

  kernelPackages = pkgs.linuxPackages_4_19;
};
}
