let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
 packages = [
  (pkgs.python312.withPackages (python-pkgs: [
    python-pkgs.pandas
    python-pkgs.numpy
    python-pkgs.requests
    python-pkgs.ipython
  ]))
 ];
 nativeBuildInputs = with pkgs; [
   stdenv.cc.cc.lib
 ];
 LD_LIBRARY_PATH = "$LD_LIBRARY_PATH:${pkgs.stdenv.cc.cc.lib}/lib";
}
