#! /bin/bash
set -ex

# initialize opam2
opam init -y --disable-sandboxing --auto-setup
eval $(opam env)
opam update
opam switch list-available ocaml-base-compiler
#opam switch create 4.12.0 
echo 'eval $(opam env)' >> ~/.bashrc

# install libraries 
./setup-opam

opam install -y dune

# build
# dune build src/main.exe
# dune run src/main.exe
