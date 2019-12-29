#!/bin/sh

export PATH=/c/Qt/5.12.3/msvc2017_64/bin:$PATH

mkdir moonplayer
cp src/Release/moonplayer.exe src/scripts/update-parsers.ps1 libmpv/mpv-1.dll moonplayer/
windeployqt moonplayer/moonplayer.exe --qmldir src/qml
pyinstaller -F src/scripts/hls_downloader.py --distpath moonplayer
pyinstaller -F src/scripts/danmaku2ass.py --distpath moonplayer
iscc .travis/win_installer.iss
mv .travis/Output/mysetup.exe ./MoonPlayer_${TRAVIS_TAG}_win_x64.exe
