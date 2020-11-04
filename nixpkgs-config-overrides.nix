{ config, pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;

    firefox.drmSupport = true;

    packageOverrides = pkgs: rec {
      tor-browser-bundle-bin = pkgs.tor-browser-bundle-bin.override {
        mediaSupport = true;
        pulseaudioSupport = true;
      };

      # Otherwise jekyll-paginate and more are missing
      jekyll = pkgs.jekyll.override {
        withOptionalDependencies = true;
      };
   };

  };
}
