{ inputs, config, pkgs, ... }:

{
	home.username = "promis";
	home.homeDirectory = "/home/promis";

    imports = [
      ../../modules/home/zsh
      ../../modules/home/starship
      ../../modules/home/micro
      ../../modules/home/git
    ];
    
	home.packages = [
	];

	home.stateVersion = "23.11";
	programs.home-manager.enable = true;
}
