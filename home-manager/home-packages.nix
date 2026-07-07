{ pkgs, pkgs-unstable, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs;
    [

      # Main packages
      zsh
      tmux
      git
      kitty

      # Applications
      spotify
      bitwarden-desktop

      # Browser
      firefox

      # Editor
      vim

      # Git Tools
      tig
      delta
      meld
      lazygit
      gh
      jujutsu

      # Kube
      kubectl
      kubeswitch
      helm
      helmfile
      k9s

      # IaC
      terraform

      # Cryptography
      sops
      age
      gnupg

      # Utils
      curl
      wget
      gparted
      jump
      htop
      tree
      fzf
      unzip
      pinentry-all
      ripgrep
      htop
      yt-dlp
      fd
      devbox
      cobra-cli
      cloc

      # Virtualizer
      qemu
      docker-compose

      # Languages
      ## Python
      python315
      ## Go
      go
      ## C / C++
      gcc
      ## Javascript
      nodejs_24
      ## Rust
      rustc
      cargo
    ] ++ (with pkgs-unstable; [
      # Unstable packages
      godot
      blender
      vscode
    ]);
}
