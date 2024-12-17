{ pkgs ? import <nixpkgs> {}, stdenv ? pkgs.stdenv, lib ? pkgs.lib, ... }:

{
  buildPhase = ''
    cp -r * $out
  '';
}