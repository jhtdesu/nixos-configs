{ pkgs, ... }: {
  home.packages = with pkgs; [
    # Dev Tools
    opencode dbeaver-bin dotnet-sdk_8 bun nodejs go
    localsend lazydocker lazygit docker-compose
    unzip

    # VPN
    wireguard-tools openvpn3 cloudflare-warp

    google-cloud-sdk k6

    # CLI Utilities
    btop fastfetch wget jq yazi bat fd ncdu
    fishPlugins.fzf-fish
    codex

    # GUI/Desktop
    fuzzel swaybg waypaper ghostty starship
    xwayland-satellite

    # Office
    onlyoffice-desktopeditors

    #Daily Use
    vesktop wl-clipboard
  ];

  xdg.desktopEntries.brave-browser = {
    name = "Brave Web Browser";
    genericName = "Web Browser";
    exec = "brave --enable-features=TouchpadOverscrollHistoryNavigation --ozone-platform=wayland %U";
    icon = "brave-browser";
    terminal = false;
    categories = [ "Network" "WebBrowser" ];
    mimeType = [
      "application/pdf"
      "text/html"
      "text/xml"
      "x-scheme-handler/http"
      "x-scheme-handler/https"
    ];
    actions = {
      "new-window" = {
        name = "New Window";
        exec = "brave --enable-features=TouchpadOverscrollHistoryNavigation --ozone-platform=wayland";
      };
      "new-private-window" = {
        name = "New Incognito Window";
        exec = "brave --enable-features=TouchpadOverscrollHistoryNavigation --ozone-platform=wayland --incognito";
      };
    };
  };
}
