let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
 packages = [
  (pkgs.python312.withPackages (python-pkgs: [
    python-pkgs.ipython
    python-pkgs.maturin
  ]))
  pkgs.rustup
  pkgs.rustc
 ]; nativeBuildInputs = with pkgs; [
   stdenv.cc.cc.lib
 ];
 LD_LIBRARY_PATH = "$LD_LIBRARY_PATH:${pkgs.stdenv.cc.cc.lib}/lib";
}
