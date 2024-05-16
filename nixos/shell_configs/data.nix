
# package made to do some data stuff
let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
 packages = [
  (pkgs.python312.withPackages (python-pkgs: [
    python-pkgs.pandas
    python-pkgs.numpy
    python-pkgs.plotly
    python-pkgs.networkx
    python-pkgs.pyvis
    python-pkgs.dash
    python-pkgs.dash-cytoscape
    python-pkgs.node2vec
    python-pkgs.scikit-learn
    python-pkgs.ipython
    python-pkgs.jupyter
  ]))
 ];
 nativeBuildInputs = with pkgs; [
   stdenv.cc.cc.lib
 ];
 LD_LIBRARY_PATH = "$LD_LIBRARY_PATH:${pkgs.stdenv.cc.cc.lib}/lib";
}
