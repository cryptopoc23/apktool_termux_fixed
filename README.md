# apktool_termux_fixed
Fixed apktool (working aapt &amp; aapt2 in arm & arm64)

run build_apktool.sh in termux
this script:
  1. install openjdk-21, qemu-user-x86-64 (for working aapt & aapt2 binaries)
  2. clone master apktool branch from official github
  3. patch aapt/aapt_64/aapt2/aapt2_64
  4. build patched sources
  5. install apktool 
