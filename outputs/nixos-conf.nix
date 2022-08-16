{ lib, inputs, system, ... }:

{
  dell-xps = lib.nixosSystem {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [
      ../system/machine/dell-xps
      ../system/configuration.nix
    ];
  };

  tongfang-amd = lib.nixosSystem {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [
      ../system/machine/tongfang-amd
      ../system/configuration.nix
    ];
  };

  hp-pavillion = lib.nixosSystem {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [
      ../system/machine/hp-pavillion
      ../system/configuration.nix
    ];
  };
}
