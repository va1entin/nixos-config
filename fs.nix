{ config, lib, pkgs, ... }:
  {
    fileSystems."/mnt/wd" = {
       device = "/dev/disk/by-uuid/7876B2A75AA3E12D";
       fsType = "ntfs-3g";
       options = ["permissions" "users" "auto" "rw"];
  };
}
