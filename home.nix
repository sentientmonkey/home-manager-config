{ config, pkgs, ... }: {
  home.username = "scott";
  home.homeDirectory = "/Users/scott";
  home.stateVersion = "23.05";

  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    initExtra = builtins.readFile ./zshrc;

    shellAliases = {
      ll = "ls -l";
      ls = "ls --color";
    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };

  home.packages = with pkgs; [
    awscli
    colima
    docker
    docker-compose
    direnv
    fd
    ffmpeg
    fira-code
    fira-mono
    gh
    gimp
    git
    gnupg
    hack-font
    iterm2
    jq
    kind
    kitty
    k9s
    kubectl
    kustomize
    mononoki
    neovim
    nodejs
    nodePackages.yaml-language-server
    python3
    ripgrep
    ruby_3_2
    sd
    starship
    tree
    vim
    watch
    yarn
  ];

  fonts.fontconfig.enable = true;

  home.sessionVariables = {
    LANG = "en_US.UTF-8";
    LC_CTYPE = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    EDITOR = "vim";
  };
}
