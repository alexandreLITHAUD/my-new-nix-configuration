{ pkgs, ... }: {
  home.packages = with pkgs; [

    # LSP servers
    lua-language-server # lua_ls
    gopls # Go
    jdt-language-server # Java
    clang-tools # clangd for C/C++
    rust-analyzer # Rust
    nodePackages.bash-language-server # bashls
    pyright # Python
    yaml-language-server # yamlls
    dockerfile-language-server-nodejs # dockerls
    terraform-ls # terraformls
    nil # nil_ls for Nix

    # Formatters
    black # Python
    stylua # Lua
    nodePackages.prettier # JS/TS/Web
    gotools # gofumpt, goimports for Go
    shfmt # Shell
    clang-tools # clang-format
    yamlfmt # YAML
    nixfmt-classic # Nix (or nixfmt-rfc-style)
    nixpkgs-fmt # Alternative Nix formatter
    mdformat # Markdown

    # Linters
    golangci-lint # Go
    pylint # Python
    nodePackages.markdownlint-cli # Markdown
    yamllint # YAML
    hadolint # Dockerfile

  ];
}
