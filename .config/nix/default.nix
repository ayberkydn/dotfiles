# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # <home-manager/nixos>
    ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim 
    neovim
    wget
    tmux
    yadm
    openssh
    git
    gh
    gcc
    zsh
    thefuck
    unzip
    nodejs
    bitwarden
    bitwarden-cli
    python3
    anydesk
    home-manager
    # pipewire
    # easyeffects
    # librespot
    # pulseaudio
    pulseeffects-legacy
  ];

  # systemd.user.services.librespotDaemon = {
  #   description = "Librespot daemon";
  #
  #   wantedBy = [ "multi-user.target" ];
  #   after = [ "network.target" ];
  #
  #   serviceConfig = {
  #     Type = "simple";
  #     ExecStart = "${pkgs.bash}/bin/bash -c '${pkgs.librespot}/bin/librespot -B alsa'";
  #     Restart = "always";
  #     User = "ayb";
  #     Group = "audio";
  #   };
  # };

  # boot.blacklistedKernelModules = [ "snd_pcsp" ];

  services.spotifyd = {
    enable = false;
    settings = { 
      global = {
        bitrate = 320;
        backend = "pulseaudio";
        # device = "ALC897 Analog";
        use_mpris = false;
        dbus_type = "system";
        initial_volume = "50";
        volume_normalization = true;
        normalization_pregain = 5;
        autoplay = false;
        device_name = "AYBBO";
      };
    };
  };
    
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
  nixpkgs.config.pulseaudio = true;
  programs.dconf.enable = true;
  security.rtkit.enable = true;
  #services.pulseeffects.enable = true;
  
  services.pipewire = {
    enable = false;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # services.librespot.enable = true;
  services.openssh.enable = true;
  networking.firewall.enable = false;
  # networking.extraHosts = 
  # ''
  #   ap-gew1.spotify.com  ap-gew4.spotify.com
  #   ap-guc3.spotify.com  ap-gew4.spotify.com
  # '';
  
  # networking.firewall.allowedTCPPorts = [ 57621 ];

  # programs.anydesk.enable = true;

  users.users.ayb = {
    isNormalUser = true;
    description = "ayb";
    extraGroups = [ 
      "networkmanager" 
      "wheel" 
      "docker" 
      "audio"
    ];
    packages = with pkgs; [
      spotifyd
    ];
  };


  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [
    bash
    zsh
  ];

  virtualisation.docker.enable = true;
  virtualisation.docker.enableNvidia = true;


  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 3;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Istanbul";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "tr_TR.UTF-8";
    LC_IDENTIFICATION = "tr_TR.UTF-8";
    LC_MEASUREMENT = "tr_TR.UTF-8";
    LC_MONETARY = "tr_TR.UTF-8";
    LC_NAME = "tr_TR.UTF-8";
    LC_NUMERIC = "tr_TR.UTF-8";
    LC_PAPER = "tr_TR.UTF-8";
    LC_TELEPHONE = "tr_TR.UTF-8";
    LC_TIME = "tr_TR.UTF-8";
  };


  # Enable the KDE Plasma Desktop Environment.
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "ayb";
  services.xserver.desktopManager.plasma5.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;


  # Define a user account. Don't forget to set a password with ‘passwd’.
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?


    # Make sure opengl is enabled
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  # Tell Xorg to use the nvidia driver (also valid for Wayland)
  services.xserver.videoDrivers = ["nvidia" "modesetting"];
  boot.extraModulePackages = [ config.boot.kernelPackages.nvidia_x11 ];

  


  hardware.nvidia = {
    modesetting.enable = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

}


