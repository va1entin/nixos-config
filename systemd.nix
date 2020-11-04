{ config, pkgs, ... }:
{
  systemd = {
  extraConfig = ''
    DefaultTimeoutStopSec=10s
  '';
  #  services.nvidia-control-devices = {
  #    wantedBy = [ "multi-user.target" ];
  #    serviceConfig.ExecStart = "${pkgs.linuxPackages.nvidia_x11.bin}/bin/nvidia-smi";
  #  };
  };
}
