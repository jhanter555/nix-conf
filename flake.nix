{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, nixvim, ... } @ inputs: {
    nixosConfigurations.my-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/my-laptop/configuration.nix
        {
          nixpkgs.config.allowUnfree = true;
        }
      ];
    };
  };
}
