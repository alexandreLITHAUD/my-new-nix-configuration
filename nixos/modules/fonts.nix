{ pkgs, ... }: {
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-color-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.hack
    nerd-fonts.symbols-only
  ];
}
