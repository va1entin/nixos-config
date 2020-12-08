{
  hardware = {
    pulseaudio.enable = true;

    # Required for Wayland with GDM when using nvidia proprietary drivers, see xserver.nix
    # nvidia.modesetting.enable = true;

    # opengl.driSupport32Bit = true;
  };
}
