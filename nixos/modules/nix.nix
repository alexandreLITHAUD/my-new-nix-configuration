{ inputs, ... }: {

  nix.registry = {
    nixpkgs.flake = inputs.nixpkgs;
  };

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    flake-registry = "https://channels.nixos.org/flake-registry.json";
  };
}
