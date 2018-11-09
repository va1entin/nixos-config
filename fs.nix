{ config, lib, pkgs, ... }:

{
fileSystems."/mnt/wd" = {
   device = "/dev/sdc1";
   fsType = "ext4";
 };

}
