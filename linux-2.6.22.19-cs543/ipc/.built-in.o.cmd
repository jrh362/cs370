cmd_ipc/built-in.o :=  ld -m elf_x86_64  -r -o ipc/built-in.o ipc/util.o ipc/msgutil.o ipc/msg.o ipc/sem.o ipc/shm.o ipc/ipc_sysctl.o
