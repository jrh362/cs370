cmd_arch/x86_64/boot/compressed/piggy.o := ld -m elf_x86_64  -r --format binary --oformat elf64-x86-64 -T arch/x86_64/boot/compressed/vmlinux.scr arch/x86_64/boot/compressed/vmlinux.bin.gz -o arch/x86_64/boot/compressed/piggy.o 