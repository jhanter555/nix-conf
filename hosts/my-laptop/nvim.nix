{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [ 
      neovim
      gopls
      go
      nixd
      pyright
      clang-tools
      
    ];

  }
