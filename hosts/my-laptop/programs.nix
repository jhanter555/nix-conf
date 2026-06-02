{ config, pkgs, inputs, ... }:
{ imports = [ ./nvim.nix ];
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
    
    python3
    vulkan-loader
    vulkan-tools

    protonup-qt
    mangohud
    goverlay
];
  programs.firefox.enable = true;
  programs.steam.enable = true;
  programs.fish.enable = true;
      

   system.stateVersion = "26.05";
}


