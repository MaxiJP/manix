![Manix Logo](logo.png)

# Manix (Max Unix)

> **⚠ Warning**<br> Manix is in very early alpha development stages. On top of this, this OS is totally hobby and probably isn't going to be better than any other Unix-based OS for any reason. If you are like me and do just like to check out other people's OS instead of making your own though, be my guest.

## About
**Manix (Max Unix)** is a hobby operating system made by me, Max Prime! I've been using Linux for almost a year (Arch, btw) and I have loved the prospect of OS development maybe since I was 6 or 7. I have always wanted to build and OS like this so I said *"fuck it. I'm older and have more experience(?) so lets give it a crack"*.

-1500 odds that I actually finish this project.

## Prerequisites
To build this, you will need NASM. On top of this, if you want to actually run it on non-native hardware (which there is no guarantee of this OS working on native hardware at the time of writing), you will need qemu.

For Arch-based systems:
```
sudo pacman -S qemu nasm
```

For Ubuntu-based systems:
```
sudo apt-get install qemu-system nasm
```

For MacOS:
```
brew install nasm qemu
```


## Build
Currently, there is no sort of a Makefile or a build script. Instead, just use nasm.

To build, simply input the code,
```
nasm -f bin max.s -o build/maxbin
```

To then run your file using qemu,
```
qemu-system-i386 build/maxbin
```
