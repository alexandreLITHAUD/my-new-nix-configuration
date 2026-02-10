{ pkgs, pkgs-unstable, ... }: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # List of tools only available to this user
    obsidian
    toybox
  ] ++ (with pkgs-unstable; [
    # Unstable packages
  ]);
}
