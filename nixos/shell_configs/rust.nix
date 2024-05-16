let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
 packages = with pkgs; [
  rustup
  rustc
 ]; nativeBuildInputs = with pkgs; [
   stdenv.cc.cc.lib
 ];
 LD_LIBRARY_PATH = "$LD_LIBRARY_PATH:${pkgs.stdenv.cc.cc.lib}/lib";
}
