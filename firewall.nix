{ config, pkgs, ... }:
{
  networking.networkmanager.enable = true;
  networking.firewall = {
    enable = true;
    allowPing = false;
    allowedTCPPorts = [ ];
    allowedUDPPorts = [ ];
    logRefusedConnections = true;
    checkReversePath = "strict";
    enableIPv6 = true;
  };
}
