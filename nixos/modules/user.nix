{ pkgs, user, ... }: {
  programs.zsh.enable = true;
  programs.firefox.enable = true;
  
  virtualisation.docker.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "docker" ];
    };
  };
}
