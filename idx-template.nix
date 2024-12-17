{ pkgs ? import <nixpkgs> {}, stdenv ? pkgs.stdenv, lib ? pkgs.lib, ... }:

let
  componentName = config.componentName or "my-component"; // Access the parameter value
in
{
  buildPhase = ''
    cp -r * $out
    # Example: Rename a file based on the componentName parameter
    mv my-component.js ${componentName}.js 
  '';
}