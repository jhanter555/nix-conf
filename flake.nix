{
  description = "My Flake Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable"; # роллинг релиз
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      my-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        # pkgs для всех геев города
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/my-laptop/configuration.nix # сраный кфг
        ];
      };
    };
  };
}
