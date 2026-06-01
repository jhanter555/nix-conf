{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { self, nixpkgs, nixvim, ... } @ inputs: {
    programs.nixvim.nixpkgs.source = nixpkgs;
    nixosConfigurations.my-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/my-laptop/configuration.nix
        nixvim.nixosModules.nixvim
        {
          nixpkgs.config.allowUnfree = true;
          programs.nixvim.version.enableNixpkgsReleaseCheck = false;
        }
      ];
    };
  };
}
