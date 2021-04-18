#! /bin/sh
curl -fsSLO https://raw.githubusercontent.com/mamewotoko/xvfb-screenshooter/master/xvfb-screenshooter.sh
chmod +x xvfb-screenshooter.sh
./xvfb-screenshooter.sh timeout 10s dune exec src/main.exe

if [ -n "$UPLOAD_SCREENSHOT" ]; then
    curl -u $AUTH -fsSLO https://mamewo.ddo.jp/private/gdrive
    chmod +x gdrive
    sh -x ci/upload.sh
fi
