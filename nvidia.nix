{ config, pkgs, ... }:
{
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.graphics.enable = true;
  hardware.nvidia = {
    modsettings.enable = true;
    nvidiaSettings = true;
    open = false;
  };
  hardware.opengl.enable = true;
  hardware.opengl.driSupport32Bit = true;


