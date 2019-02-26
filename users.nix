{ pkgs, ... }:
{

# required for login in a vm created by "nixos-rebuild build-vm"
#users.users.val.initialPassword = "test";

users = {

extraUsers = {
val = {
    isNormalUser = true;
    home = "/home/val";
    uid = 1000;
    description = "Valentin";
    extraGroups = [ "wheel" "networkmanager" "adbusers" "docker" "plugdev" ];
    shell = pkgs.zsh;
  #openssh.authorizedKeys.keys = [ "ssh-dss AAAAB3Nza... alice@foobar" ];
  };
};

groups.plugdev = {};
};
}
