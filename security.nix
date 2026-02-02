{ config, pkgs, ... }:
{
  security.sudo = {
    wheelNeedsPassword = true;
    execWheelOnly = true;
  };
  security.apparmor.enable = true;
  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    };
  boot.kernel.sysctl = {
    "kernel.kptr_restrict" = 2;
    "kernel.dmesg_restrict" = 1;
    "net.ipv4.tcp_syncookies" = 1;
    "net.ipv4.conf.all.rp_filer" = 1;
  };
  boot.kernelPackages = pkgs.linuxPackages.latest;
