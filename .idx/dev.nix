{ pkgs ? import <nixpkgs> {} }:

{
  # Specify the Nix channel to use (optional, but recommended)
  channel = "stable-24.05"; 

  # Install essential packages
  packages = [
    pkgs.nodejs  # For running JavaScript tools
  ];

  # Configure VS Code extensions
  idx.extensions = [
    "monokai.theme-monokai-pro-vscode" 
    "esbenp.prettier-vscode"           
    "sgtpep.prettier-plugin-html-template-literals" 
    "begaroth.web-component-formatter"  
    "naumovs.color-highlight"          
    "nicolasparada.innerhtm"           
  ];
}