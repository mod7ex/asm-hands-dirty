rm bin/*

clear

nasm -f elf32 index.asm -o bin/index.o

ld -m elf_i386 bin/index.o -o bin/index

# gcc -m32 -no-pie bin/index.o -o bin/index

bin/index

echo '\n'