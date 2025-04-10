final: prev: {
  aerospace = prev.aerospace.overrideAttrs (drv: rec {
    src = ./AeroSpace-v0.17.1-gaps.zip;
    buildInputs = [ prev.pkgs.unzip ];
  });
}
