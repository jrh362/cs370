cmd_drivers/ata/libata.o := ld -m elf_x86_64  -r -o drivers/ata/libata.o drivers/ata/libata-core.o drivers/ata/libata-scsi.o drivers/ata/libata-sff.o drivers/ata/libata-eh.o drivers/ata/libata-acpi.o
