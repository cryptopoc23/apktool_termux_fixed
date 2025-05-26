#!/data/data/com.termux/files/usr/bin/bash

echo "Installing packages..."
pkg update
pkg upgrade
pkg install -y openjdk-21 qemu-user-x86-64 unzip

echo "Cloning latest apktool..."
git clone --recursive -b master https://github.com/iBotPeaches/Apktool

echo "Patching aapt binaries..."
mkdir -p $PREFIX/bin/apktool-cli/aapt
mv ./Apktool/brut.apktool/apktool-lib/src/main/resources/prebuilt/linux/* $PREFIX/bin/apktool-cli/aapt
cp ./scripts/* Apktool/brut.apktool/apktool-lib/src/main/resources/prebuilt/linux

echo "Building apktool..."
pushd Apktool
./gradlew build
popd

echo "Installing apktool..."
unzip ./Apktool/brut.apktool/apktool-cli/build/distributions/apktool-cli.zip -d .
cp -r ./apktool-cli/* $PREFIX/bin/apktool-cli
ln -s $PREFIX/bin/apktool-cli/bin/apktool-cli $PREFIX/bin/apktool

rm -rf Apktool
rm -rf apktool-cli

echo "Done!"
