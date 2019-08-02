cmd_kernel/power/built-in.o :=  ld -m elf_x86_64  -r -o kernel/power/built-in.o kernel/power/main.o kernel/power/process.o kernel/power/console.o kernel/power/poweroff.o
