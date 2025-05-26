# apktool_termux_fixed
Fixed apktool (working aapt &amp; aapt2 in arm & arm64)

How to use?
	1. open termux
	2. pkg update
	3. pkg upgrade
	4. pkg install git
	5. git clone https://github.com/cryptopoc23/apktool_termux_fixed 
	6. cd apktool_termux_fixed
	7. ./build_apktool.sh
	8. use 'apktool' command :-)

build_apktool.sh script:
  1. install unzip, openjdk-21, qemu-user-x86-64 (for working aapt & aapt2 binaries)
  2. clone master apktool branch from official github
  3. patch aapt/aapt_64/aapt2/aapt2_64
  4. build patched sources
  5. install apktool 
