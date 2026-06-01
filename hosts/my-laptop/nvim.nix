{ pkgs, ... }:
{
  imports = [
    ../../dots/nvim/default.nix
  ];

  programs.nixvim = {
    enable = true;
    version.enableNixpkgsReleaseCheck = false;
    globals.mapleader = " ";

    opts = {
      relativenumber = true;
      incsearch = true;
    };

    colorschemes.onedark.enable = true;

    plugins = {
      cmp-emoji.enable = false;
      lualine.enable = true;
      telescope.enable = true;
      treesitter = {
        enable = true;
      };

      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          gopls.enable = true;
          basedpyright.enable = true;
          marksman.enable = true;
          terraformls.enable = true;
        };
      };
    };

    extraPackages = with pkgs; [
      stylua
      nixfmt
      ripgrep
      fzf
      go
      cargo
      rustc
    ];
  };
}
