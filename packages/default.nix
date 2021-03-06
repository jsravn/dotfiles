[
  (self: super:
    with super; {
      # Custom packages.
      my = {
        cached-nix-shell = (callPackage (builtins.fetchTarball
          "https://github.com/xzfc/cached-nix-shell/archive/master.tar.gz")
          { });
        emacsMacport = callPackage ./emacsMacport {
          inherit (pkgs.darwin.apple_sdk.frameworks) AppKit GSS ImageIO;
          stdenv = pkgs.clangStdenv;
        };
        notify-send-sh = (callPackage ./notify-send-sh.nix { });
        prl-tools = (callPackage ./prl-tools.nix { kernel = pkgs.linux; });
        roon-bridge = (callPackage ./roon-bridge.nix { });
        scmpuff = (callPackage ./scmpuff.nix { });
        sddm-themes = (callPackage ./sddm-themes.nix { });
        stepmania = (callPackage ./stepmania.nix { });
        gnome-extension-switcher = (callPackage ./switcher.nix { });
        gnome-extension-paperwm = (callPackage ./paperwm.nix { });
      };

      # Make nur packages available.
      nur = import (builtins.fetchTarball
        "https://github.com/nix-community/NUR/archive/master.tar.gz") {
          inherit super;
        };

      # Make unstable packages available.
      unstable = import <nixos-unstable> {
        inherit config;
        overlays = [
          (import (builtins.fetchTarball "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz"))
        ];
      };
    })

  # Provides emacsUnstable.
  (import (builtins.fetchTarball
    "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz"))
]
