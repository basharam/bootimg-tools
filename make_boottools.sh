#!/bin/bash -x

cd libmincrypt
gcc -c *.c -I../include
ar rcs libmincrypt.a *.o

cd ../mkbootimg

gcc mkbootimg.c -o mkbootimg -I../include ../libmincrypt/libmincrypt.a
gcc unmkbootimg.c -o unmkbootimg -I../include ../libmincrypt/libmincrypt.a

cd ../cpio

gcc mkbootfs.c -o mkbootfs -I../include


 
