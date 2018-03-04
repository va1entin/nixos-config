{ pkgs, ... }:
{
users.extraUsers = {

val = {
    isNormalUser = true;
    home = "/home/val";
    uid = 1000;
    description = "Valentin";
    extraGroups = [ "wheel" "networkmanager" "adbusers" "docker" ];
    shell = pkgs.zsh;
  #openssh.authorizedKeys.keys = [ "ssh-dss AAAAB3Nza... alice@foobar" ];
  };

guest = {
   isNormalUser = true;
};
};
}
