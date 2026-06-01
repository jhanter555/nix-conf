{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    qbittorrent
    go
    nodejs
    tree-sitter
    gcc
    stdenv.cc.cc
    glibc
    gnumake
    base
    base-devel

    starship
    fastfetch
    ncdu
    eza
    bat
    fd
    ripgrep
    btop
    iotop
    nmap
    dnsutils
    unzip
    p7zip
    direnv
    neovim
    pciutils
    usbutils

    discord
    telegram-desktop

    gparted

    wine
    wine-staging
    winetricks

    vulkan-loader
    vulkan-tools

    neovim
    lutris
    protonup-qt
    heroic

    mangohud
    goverlay
];
  programs.firefox.enable = true;
  programs.steam.enable = true;
  programs.fish.enable = true;
      

   nixpkgs.config.allowUnfree = true;
   system.stateVersion = "26.05";
}


