{ config, pkgs, ... }:
{ boot.loader.systemd-boot.enable = false
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efiSysMountPoint = "/boot";
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev"
    useOsProber = true;
    extra.Entries = ''
      menuentry "UEFI" {
        fwsetup
      }
    '';
    };
}
