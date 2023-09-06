{pkgs}: {

  # Which nixpkgs channel to use.
  channel = "stable-23.05"; # or "unstable"

  # Use https://search.nixos.org/packages to  find packages
  packages = [
    pkgs.jsonnet
    pkgs.gnumake
  ];

  # sets environment variables in the workspace
  env = {};

  # search for the extension on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
    "Grafana.vscode-jsonnet"
  ];

  # preview configuration, identical to monospace.json
  idx.previews = {
    enable = false;
    previews = [];
  };
}