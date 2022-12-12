i: install
install:
	nix-env -iA nixpkgs.myPackages	

u: update
update:
	nix-channel --update nixpkgs
	nix-env -u '*'
