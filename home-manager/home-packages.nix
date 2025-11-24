{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [

    # Main packages
    zsh
    tmux
    neovim
    git
    kitty

    # Browser
    firefox

    # Editor
    vim
    
    # Git Tools
    tig
    delta
    meld

    # Kube
    kubectl
    kubeswitch
    helm
    helmfile
    k9s

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
    
    # Languages
    ## Python
    python314
    ## Go
    go
    ## C / C++
    gcc
    ## Javascript
    nodejs_22
    ## Rust
    rustc
    cargo
  ];
}
