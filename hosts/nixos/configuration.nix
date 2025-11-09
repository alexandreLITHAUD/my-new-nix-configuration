{ pkgs, stateVersion, hostname, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./local-packages.nix
      ../../nixos/modules
    ];

  networking.hostName = hostname;

  environment.systemPackages = [ pkgs.home-manager ];

  system.stateVersion = stateVersion;
}
