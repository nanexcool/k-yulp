{ pkgsSrc ? <nixpkgs>}:

with import pkgsSrc {};

stdenv.mkDerivation {
  name = "k-yulp";
  buildInputs = [
    bc
    flex
    getopt
    git
    gnumake
    jq
    nodejs
    openjdk8
    parallel
    utillinux
    z3
    zstd
  ];

  shellHook = ''
    export PATH=$PATH:$KLAB_PATH/node_modules/.bin:$KLAB_PATH/bin
    export KLAB_EVMS_PATH=$KLAB_PATH/evm-semantics
  '';
}
