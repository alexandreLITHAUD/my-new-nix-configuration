{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # List of tools only available to this user
    ventoy
  ];
}
