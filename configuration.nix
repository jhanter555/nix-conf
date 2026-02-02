{ config, pkgs, ... }:

{ imports = [
  ./hardware-configuration.nix
  ./bluetooth.nix
  ./bootloader.nix
  ./firewall.nix
  ./desktop.nix
  ./nvidia.nix
  ./security.nix
  ./programs.nix
];
  # exp. features
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    };
  # auto garbage collect
  nix.optimise.automatic = true;
  nix.optimise.dates = [ "weekly" ];
  
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono # nerd fonts
  ];
  
  # shell
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];

  # sound
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    };
  hardware.pulseaudio.enable = false;
  # sys settings
  networking.hostName = "NixOS";
  time.timeZone = "Europe/Kyiv";
  i18n.defaultLocale = "en_US.UTF-8";
  services.fwupd.enable = true;
  
  # my user
  users.users.tlrf4 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };
