# Port 8096

{ pkgs, config, ... }:
{
  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = "root";
    group = "root";
  };
}
