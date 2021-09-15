nasm -f elf64 -g concatstring.asm -o concatstring.o
gcc -m64 concatstring.o -o concatstring