let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
 packages = [
   # jupyter is not yet supported for 3.12 with nix packages
  (pkgs.python311.withPackages (python-pkgs: [
    python-pkgs.jupyter
  ]))
 ];
 nativeBuildInputs = with pkgs; [
   stdenv.cc.cc.lib
 ];
 LD_LIBRARY_PATH = "$LD_LIBRARY_PATH:${pkgs.stdenv.cc.cc.lib}/lib";
 shellHook = ''zsh'';
}
