{ config, pkgs, ... }:

{
  imports =  [
    # Hardware scan
    ./hardware-configuration.nix
  ];

  # Use the GRUB 2 boot loader.
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
        enable  = true;
        devices = ["nodev"];
        efiSupport = true;
        version = 2;
      };
    };
  };

  networking = {
    hostName = "nixLap";
    interfaces.eno1.useDHCP = true;
    interfaces.wlo1.useDHCP = true;
  };
}
