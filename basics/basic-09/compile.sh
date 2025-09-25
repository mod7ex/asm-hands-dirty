rm bin/*

clear

nasm -f elf32 index.asm -o bin/index.o

gcc -m32 bin/index.o index.c -o bin/index

bin/index

echo '\n'