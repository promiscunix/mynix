
{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../modules/core
      ../../modules/nix/jellyfin
      ../../modules/nix/podman
      ../../modules/nix/nvidia
      ../../modules/nix/hyprland
      ../../modules/nix/pipewire
      ../../modules/nix/waybar
    ];

  boot = { 
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    }; # End loader
    supportedFilesystems = [ "btrfs" ];
  }; # End boot
    
  systemd.services.NetworkManager-wait-online.enable = false;

  networking = {
    hostName = "acer"; 
    networkmanager.enable = true;
  }; # End networking



 environment.systemPackages = with pkgs; [
     distrobox
  ];

  services = {
    openssh.enable = true;
    tailscale.enable = true;
  }; # End services
  
  system.stateVersion = "23.11"; 
}

