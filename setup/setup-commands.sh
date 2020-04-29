mkdir -p ~/Dev/glmxndr
cd ~/Dev/glmxndr
git clone https://github.com/glmxndr/confets.git
cd



# Install I3
pamac install i3wm dmenu feh scrot python-netifaces awesome-terminal-fonts
pip install --user bumblebee-status


# Install Fonts
pamac install ttf-ubuntu-font-family adobe-source-code-pro-fonts ttf-font-awesome

# Install Nix
sh <(curl https://nixos.org/nix/install)

# Install common nix pkgs
nix-env -iA \
  nixpkgs.bat \
  nixpkgs.fzf \
  nixpkgs.emacs \
  nixpkgs.git \
  nixpkgs.terminator \
  nixpkgs.vim \
  nixpkgs.bitwarden-cli \
  nixpkgs.protonvpn-cli


# Install spacemacs
cd

# Activate touchpad
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
EndSection
EOF


# Install Agda

nix-env -iA nixpkgs.haskellPackages.Agda && agda-mode setup
nix-env -iA nixpkgs.AgdaStdlib

