{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ayb";
  home.homeDirectory = "/home/ayb";
  home.stateVersion = "23.11";

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    waybar
    hyprpaper
    wofi
  ];#




  wayland.windowManager.hyprland.enable = true;
  home.sessionVariables.NIXOS_OZONE_WL = "1";
  wayland.windowManager.hyprland.extraConfig = ''
    source = ~/.config/hypr/myconfig.conf
  '' ;


  # home.file.".config/hypr" = {
  #  source = ./dotfiles/.config/hypr;
  #  recursive = true;
  # };



  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/ayb/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
