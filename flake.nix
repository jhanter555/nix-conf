{
  description = "My NixOS Flake Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
    outputs = { self, nixpkgs, nixvim, ... } @ inputs: {
    nixosConfigurations.my-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/my-laptop/configuration.nix
        # NixVim
        nixvim.nixosModules.nixvim
      ];
    };
  };
}
