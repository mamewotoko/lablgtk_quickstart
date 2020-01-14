#! /bin/sh
set -ex
# env AUTH, LABLGTK

sh setup-opam
eval $(opam env)
sed -i.bak "s/lablgtk2/$LABLGTK/" src/dune
dune build src/main.exe

if [ "$(uname)" = Darwin ]; then
    exit 0
fi
    
curl -u $AUTH -fsSLO https://mamewo.ddo.jp/private/gdrive
chmod +x gdrive
curl -fsSLO https://raw.githubusercontent.com/mamewotoko/xvfb-screenshooter/master/xvfb-screenshooter.sh
chmod +x xvfb-screenshooter.sh
./xvfb-screenshooter.sh timeout 10s dune exec src/main.exe
sh -x ci/upload.sh
