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

  ];

  wayland.windowManager.hyprland.enable = true; # enable Hyprland
  wayland.windowManager.hyprland.extraConfig = ''
  # source = ~/.config/hypr/color.conf
  # source = ~/.config/hypr/color.conf
  # source = ~/.config/hypr/color.conf


  ### MONITORS ###
  # See https://wiki.hyprland.org/Configuring/Monitors/
  # monitor = name, res, position, scale
  monitor=,preferred,auto,1


  ### MY PROGRAMS ###
  # See https://wiki.hyprland.org/Configuring/Keywords/
  $terminal = kitty
  $fileManager = dolphin
  $menu = wofi --show drun


  ### AUTOSTART ###
  # exec-once = $terminal
  # exec-once = nm-applet &
  exec-once = waybar
  exec-once = hyprpaper


  ### ENVIRONMENT VARIABLES ###
  # See https://wiki.hyprland.org/Configuring/Environment-variables/
  env = XCURSOR_SIZE,54
  env = HYPRCURSOR_SIZE,54


  ### LOOK AND FEEL ###
  # https://wiki.hyprland.org/Configuring/Variables/#general
  general { 
      gaps_in = 2
      gaps_out = -1

      border_size = 2

      # https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
      col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
      col.inactive_border = rgba(595959aa)

      # Set to true enable resizing windows by clicking and dragging on borders and gaps
      resize_on_border = true 

      # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
      allow_tearing = true

      layout = master
  }

  # https://wiki.hyprland.org/Configuring/Variables/#decoration
  decoration {
      rounding = 10

      # Change transparency of focused and unfocused windows
      active_opacity = 1.0
      inactive_opacity = 1.0

      drop_shadow = true
      shadow_range = 4
      shadow_render_power = 3
      col.shadow = rgba(1a1a1aee)

      # https://wiki.hyprland.org/Configuring/Variables/#blur
      blur {
          enabled = true
          size = 3
          passes = 1
          
          vibrancy = 0.1696
      }
  }

  animations {
      enabled = true
      # Default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
      # animation = NAME, ONOFF, SPEED, CURVE [,STYLE]
      bezier = bez, 0.36, 0, 0.66, -0.56

      animation = windowsIn, 1, 3, default, slide
      animation = windowsOut, 1, 2, default, slide
      animation = windowsMove, 1, 7, default, slide
      animation = workspaces, 1, 3, default, slide
      animation = fade, 1, 3, default
      animation = border, 0
      animation = borderangle, 0
  }

  # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
  dwindle {
      pseudotile = true # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
      preserve_split = true # You probably want this
  }

  # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
  master {
      new_status = master
  }

  # https://wiki.hyprland.org/Configuring/Variables/#misc
  misc { 
      force_default_wallpaper = -1 # Set to 0 or 1 to disable the anime mascot wallpapers
      disable_hyprland_logo = true # If true disables the random hyprland logo / anime girl background. :(
  }


  #############
  ### INPUT ###
  #############

  # https://wiki.hyprland.org/Configuring/Variables/#input
  input {
      kb_layout = us
      kb_variant =
      kb_model =
      kb_options =
      kb_rules =

      follow_mouse = 1

      sensitivity = 0 # -1.0 - 1.0, 0 means no modification.

      touchpad {
          natural_scroll = false
      }
  }

  # https://wiki.hyprland.org/Configuring/Variables/#gestures
  gestures {
      workspace_swipe = false
  }

  # Example per-device config
  # See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
  device {
      name = epic-mouse-v1
      sensitivity = -0.5
  }


  ####################
  ### KEYBINDINGSS ###
  ####################

  # See https://wiki.hyprland.org/Configuring/Keywords/
  $mainMod = SUPER # Sets "Windows" key as main modifier

  # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
  bind = $mainMod, Q, exec, $terminal
  bind = $mainMod, C, killactive,
  bind = $mainMod, M, exit,
  bind = $mainMod, E, exec, $fileManager
  bind = $mainMod, V, togglefloating,
  bind = $mainMod, R, exec, $menu
  bind = $mainMod, P, pseudo, # dwindle
  bind = $mainMod, J, togglesplit, # dwindle

  # Move focus with mainMod + arrow keys
  bind = $mainMod, h, movefocus, l
  bind = $mainMod, l, movefocus, r
  bind = $mainMod, k, movefocus, u
  bind = $mainMod, j, movefocus, d

  # Switch workspaces with mainMod + [0-9]
  bind = $mainMod, 1, workspace, 1
  bind = $mainMod, 2, workspace, 2
  bind = $mainMod, 3, workspace, 3
  bind = $mainMod, 4, workspace, 4
  bind = $mainMod, 5, workspace, 5
  bind = $mainMod, 6, workspace, 6
  bind = $mainMod, 7, workspace, 7
  bind = $mainMod, 8, workspace, 8
  bind = $mainMod, 9, workspace, 9
  bind = $mainMod, 0, workspace, 10

  # Move active window to a workspace with mainMod + SHIFT + [0-9]
  bind = $mainMod SHIFT, 1, movetoworkspace, 1
  bind = $mainMod SHIFT, 2, movetoworkspace, 2
  bind = $mainMod SHIFT, 3, movetoworkspace, 3
  bind = $mainMod SHIFT, 4, movetoworkspace, 4
  bind = $mainMod SHIFT, 5, movetoworkspace, 5
  bind = $mainMod SHIFT, 6, movetoworkspace, 6
  bind = $mainMod SHIFT, 7, movetoworkspace, 7
  bind = $mainMod SHIFT, 8, movetoworkspace, 8
  bind = $mainMod SHIFT, 9, movetoworkspace, 9
  bind = $mainMod SHIFT, 0, movetoworkspace, 10

  # Example special workspace (scratchpad)
  bind = $mainMod, S, togglespecialworkspace, magic
  bind = $mainMod SHIFT, S, movetoworkspace, special:magic

  # Scroll through existing workspaces with mainMod + scroll
  bind = $mainMod, mouse_down, workspace, e+1
  bind = $mainMod, mouse_up, workspace, e-1

  # Move/resize windows with mainMod + LMB/RMB and dragging
  bindm = $mainMod, mouse:272, movewindow
  bindm = $mainMod, mouse:273, resizewindow

  input {
      kb_options=ctrl:nocaps
  }

  ##############################
  ### WINDOWS AND WORKSPACES ###
  ##############################

  # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
  # See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules

  # Example windowrule v1
  # windowrule = float, ^(kitty)$

  # Example windowrule v2
  # windowrulev2 = float,class:^(kitty)$,title:^(kitty)$

  windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.

  '' ;

  home.sessionVariables.NIXOS_OZONE_WL = "1";

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.

  };

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
