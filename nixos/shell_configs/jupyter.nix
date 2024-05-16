let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
 packages = [
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
