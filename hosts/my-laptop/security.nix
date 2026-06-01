{ config, pkgs, ... }:
{
  security.sudo = {
    wheelNeedsPassword = true;
    execWheelOnly = true;
  };
  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    };
  boot.kernel.sysctl = {
    "kernel.kptr_restrict" = 2;
    "kernel.dmesg_restrict" = 1;
    "net.ipv4.tcp_syncookies" = 1;
    "net.ipv4.conf.all.rp_filter" = 1;
  };
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
