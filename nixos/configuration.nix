# NixOS config van Paul
{ config, pkgs, ... }:

{
  imports =
    [ # De hardware config toevoegen
      ./hardware-configuration.nix
    ];

# Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "xps13";
  # networking.wireless.enable = true;  #  wireless via wpa_supplicant.

# Networkmanager
  networking.networkmanager.enable = true;

# Tijdzone
  time.timeZone = "Europe/Amsterdam";

# Taal en locatie
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "nl_NL.UTF-8";
    LC_IDENTIFICATION = "nl_NL.UTF-8";
    LC_MEASUREMENT = "nl_NL.UTF-8";
    LC_MONETARY = "nl_NL.UTF-8";
    LC_NAME = "nl_NL.UTF-8";
    LC_NUMERIC = "nl_NL.UTF-8";
    LC_PAPER = "nl_NL.UTF-8";
    LC_TELEPHONE = "nl_NL.UTF-8";
    LC_TIME = "nl_NL.UTF-8";
  };

# Keyboard in grafische omgeving
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

# Gebruikers (wachtwoord via passwd)
  users.users.paul = {
    isNormalUser = true;
    description = "Paul";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [];
  };
  
# Ik gebruik de zsh shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

# unfree, Linux moet wel bruikbaar zijn
  nixpkgs.config.allowUnfree = true;

# The one and only WM
  programs.hyprland = {
	enable = true;
	xwayland.enable = true;
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-wlr ];

# sessie en hardware optie's (soms wel, soms niet nodig)
  environment.sessionVariables ={
	#Als je je cursor niet kan zien:
	WLR_NO_HARDWARE_CURSORS = "1";
	#Als Elektron apps niet werken
	NIXOS_OZONE_WL = "1";
  };

  hardware = {
# OpenGL
	opengl.enable = true;
  };

# Software op systeem niveau, voor alle gebruikers
  environment.systemPackages = with pkgs; [
#tools and system
	zsh
	oh-my-zsh
	zsh-powerlevel10k
	electron
	libnotify
	dunst
	wl-clipboard
	lxqt.lxqt-policykit
	networkmanagerapplet
	capitaine-cursors-themed
	gnome.gdm
	nwg-look
	tokyo-night-gtk
	gvfs
	ocs-url
	vimPlugins.vim-airline
	vimPlugins.vim-airline-themes
	xarchiver
	killall
	htop
	powertop
#applications
	gimp-with-plugins
	spotify
	#obsidian
	inkscape-with-extensions
	feh
	sway-contrib.grimshot
	yazi
	brightnessctl
	waybar
	vim
	wget
	curl
	lf
	swww
	kitty
	alacritty
	rofi-wayland
	google-chrome
	xfce.thunar
	xfce.thunar-volman
	xfce.thunar-archive-plugin
	_1password-gui
	_1password
	git-credential-1password
	git
	github-desktop
  ];

# Fonts (hebben we echt alle Nerdfonts nodig?)
  fonts.packages = with pkgs; [
	meslo-lgs-nf
	nerdfonts
	font-awesome
	font-awesome_5
	noto-fonts
	noto-fonts-cjk
	noto-fonts-emoji
  ];

# Herrie
  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
	enable = true;
	alsa.enable = true;
	pulse.enable = true;
	jack.enable = true;
  };

# wachtwoorden en certificaten bewaren
  services.gnome = {
      gnome-keyring.enable = true;
  };

  security = {
    pam = {
      services = {
        login.enableGnomeKeyring = true;
      };
    };
  };

# services die gestart moeten worden
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = true;
    displayManager.sessionPackages = [ pkgs.hyprland ];
    libinput.enable = true;
  };

  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  services.gvfs.enable = true;
  services.udisks2.enable = true;

  # Open ports in de firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Of de firewall helemaal aan en uit zetten:
  # networking.firewall.enable = false;

  system.stateVersion = "23.11"; # De versie (niet zomaar aanpassen!! 

}
