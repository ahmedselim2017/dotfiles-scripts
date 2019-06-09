#!/bin/bash

    ( [ -z "$1" ] || [ -z "$2" ] ) &&  echo "Usage: compress.sh <compress_type> <file> " && exit

if ( [ -f "$2" ] || [ -d "$2" ] ); then
    case $1 in
        tar) tar -cvf "${2%.*}.tar" $2;;
        tar.bz2) tar -jcvf "${2%.*}.tar.bz2" $2;;
        tar.xz) tar -Jcvf "${2%.*}.tar.xz" $2;;
        tar.gz) tar -xcvf "${2%.*}.tar.gz" $2;;
        zip) zip "${2%.*}.zip" $2;;
        xz) xz -k $2;;
        7z) 7z a "${2%.*}.7z $2";;
        lzma) lzma -k $2;;
        bz2) bzip2 -k $2;;
        rar) rar a "${2%.*}.rar" $2;;
        gz) gzip -k $2;;
        Z) compress -fc $2;; 
        *) echo "Supported types: 
            tar   tar.bz2  tar.xz  tar.gz  zip  xz
            lzma  bz2      rar     gz      7z   Z";;


    esac
else 
    echo "File/directory not found"
fi
