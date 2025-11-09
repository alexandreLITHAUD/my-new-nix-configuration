# My personal nix home-manager config

## Installation

- Install home-manager :

```
nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager
nix-channel --update
```

- Add your user and configuration.nix

```
mkdir ./hosts/<your_hostname>
cp /etc/nixos/* ./hosts/<your_hostname>
```

- Edit the flake.nix :

```
...
  outputs = { self, nixpkgs, home-manager, ... }@inputs: let
    system = "x86_64-linux";
--  homeStateVersion = "25.05";
++  homeStateVersion = "<your_home_manager_state_version>";
--  user = "alex";
++  user = "<your_username>";
    hosts = [
--    { hostname = "test1"; stateVersion = "25.05"; }
--    { hostname = "test2"; stateVersion = "24.11"; }
++    { hostname = "<your_hostname>"; stateVersion = "<your_state_version>"; }
    ];
...
```

- Rebuild the system :

```
cd nixos-config-reborn
git add .
nixos-rebuild switch --flake ./#<hostname>
# or nixos-install --flake ./#<hostname> if you are installing on a fresh system
home-manager switch
```
