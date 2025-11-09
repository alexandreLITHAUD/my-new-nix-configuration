{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
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
    gnugpg

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
    yt-dpl
    
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
