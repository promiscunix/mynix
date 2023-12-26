{ pkgs, config, ... }:

{
	environment.systemPackages = [
	  pkgs.waybar	
	];
}
