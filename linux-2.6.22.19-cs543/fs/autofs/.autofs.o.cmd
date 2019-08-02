cmd_fs/autofs/autofs.o := ld -m elf_x86_64  -r -o fs/autofs/autofs.o fs/autofs/dirhash.o fs/autofs/init.o fs/autofs/inode.o fs/autofs/root.o fs/autofs/symlink.o fs/autofs/waitq.o
