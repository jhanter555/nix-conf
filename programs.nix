{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    qbittorrent

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

    lutris
    protonup-qt
    heroic

    manguhud
    goverlay
];
  programs.firefox.enable = true;
  programs.steam.enable = true;
  programs.zsh.enable = true;
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      vscodevim.vim
      yzhang.markdown-all-in-one
    ];
};
   nixpkgs.config.allowUnfree = true;
   system.stateVersion = "25.11";
}

