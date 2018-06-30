{ pkgs, ... }:
{
services.xserver.displayManager.sddm = {
  enable = true;
 # theme = "/mnt/sddm-theme";
  autoNumlock = true;
};
#services.xserver.displayManager.gdm.enable = true;
#  services.xserver.displayManager.slim = {
#    enable = true;
#    theme = pkgs.fetchFromGitHub {
#      owner = "va1entin";
#      repo = "nixos-slim-dark-theme";
#      rev = "d19927e970b2810f8e2a904825e86a89bdf54df4";
#      sha256 = "0lkkirxbs8rs8phyh4n3kxy9ms87sy4h0a6xrlraihalbda44r04";
#    };
#  };
}
