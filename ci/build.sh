#! /bin/sh
set -ex
# env AUTH, LABLGTK

eval $(opam env)
if [ "$LABLGTK" != "lablgtk" ]; then
    sed -i.bak "s/lablgtk2/$LABLGTK/" src/dune
fi
dune build src/main.exe

if [ "$(uname)" = Darwin ]; then
    exit 0
fi

