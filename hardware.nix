{ pkgs, ... }:
{
  hardware = {
    pulseaudio = {
      enable = true;
      package = pkgs.pulseaudioFull;

      # Enabling extra codecs
      extraModules = [ pkgs.pulseaudio-modules-bt ];
    };

    # See https://nixos.wiki/wiki/Bluetooth
    bluetooth = {
      enable = true;

      # Enable A2DP Sink
      config = {
        General = {
          Enable = "Source,Sink,Media,Socket";
      };
    };

    # Required for Wayland with GDM when using nvidia proprietary drivers, see xserver.nix
    # nvidia.modesetting.enable = true;

    # opengl.driSupport32Bit = true;
    };
  };
}
