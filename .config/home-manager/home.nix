{ config, pkgs, ... }:


{
  imports = [
    "${fetchTarball "https://github.com/msteen/nixos-vscode-server/tarball/master"}/modules/vscode-server/home.nix"
  ];

  home.packages = [
    pkgs.spotifyd
    pkgs.pulseeffects-legacy
  ];

  services.vscode-server.enable = true;

  services.spotifyd = {
    enable = true;
    settings = { 
      global = {
        bitrate = 320;
        backend = "alsa";
        use_mpris = false;
        dbus_type = "system";
        initial_volume = "50";
        volume_normalization = true;
        normalization_pregain = 5;
        autoplay = false;
        device_name = "ayb-homemanager";
      };
    };
  };


	
  home.username = "ayb";
  home.homeDirectory = "/home/ayb";

  home.stateVersion = "22.11"; # Please read the comment before changing.

  programs.home-manager.enable = true;
}
