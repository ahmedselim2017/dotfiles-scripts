#!/bin/bash

[ -z "$1" ] && echo "Give an archive for extract as argument." && exit

if [ -f "$1" ]; then
    type=$(file -b --mime-type $1 | cut -d/ -f2)
    
    case $type in
        x-7z-compressed) 7z x $1;;
        x-bzip2) bzip2 -dk $1;;
        gzip) gunzip -k $1;;
        x-lzma) lzma -dk $1;;
        x-rar) unrar x $1;;
        x-tar) tar -xvf $1;;
        x-xz) unxz -dk $1;;
        x-compress) uncompress -k $1;;
        zip) unzip $1;;
        *) echo "Unknown archive method" ;;
    esac
else 
    echo "File not found"
fi
