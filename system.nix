{ pkgs, ... }:
{
system = {

#  autoUpgrade = {
#   enable = true;
#    dates = "19:00";
#  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  stateVersion = "20.03"; # Did you read the comment?
};

}
