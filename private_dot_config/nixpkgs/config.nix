{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
	bitwarden-cli
        coreutils
	exa
        jq
	fish
	fd
	ripgrep
	neovim
	chezmoi
	gnumake
      ];
    };
  };
}
