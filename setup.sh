#! /bin/bash
set -ex

# initialize opam2
opam init -y --disable-sandboxing --auto-setup
eval $(opam env)
opam update
opam switch list-available ocaml-base-compiler
#opam switch create 4.12.0
echo 'eval $(opam env)' >> ~/.bashrc

if [ -z "$LABLGTK" ]; then
    LABLGTK=lablgtk3
fi

if [ "$(uname)" = Darwin ]; then
    case "$LABLGTK" in
        lablgtk)
            brew install gtk+;;
        lablgtk3)
            brew install gtk+3;;
    esac
else
    # ubuntu
    case "$LABLGTK" in
        lablgtk)
            sudo apt-get install -y libgtk2.0-dev
            sed -i -e 's/lablgtk3/lablgtk2/' src/dune
            ;;
        lablgtk3)
            sudo apt-get install -y libexpat1-dev libgtk-3-dev pkg-config
            ;;
    esac
fi

opam install -y depext
opam depext -y conf-m4.1
opam install -y $LABLGTK ocamlfind dune

# eval $(opam env)
# build
# dune build src/main.exe
# dune run src/main.exe
