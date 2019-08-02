cmd_drivers/scsi/built-in.o :=  ld -m elf_x86_64  -r -o drivers/scsi/built-in.o drivers/scsi/scsi_mod.o drivers/scsi/sd_mod.o
