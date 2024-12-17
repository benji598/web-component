{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs
  ];

  # Sets environment variables in the workspace
  env = {
    idx = {
      # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
      extensions = [
        "monokai.theme-monokai-pro-vscode"
        "esbenp.prettier-vscode"
        "naumovs.color-highlight" # Add Color Highlight
      ];
    }
  };
}