cmd_arch/x86_64/boot/bootsect.o := gcc -Wp,-MD,arch/x86_64/boot/.bootsect.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64 -DSVGA_MODE=NORMAL_VGA  -D__BIG_KERNEL__   -c -o arch/x86_64/boot/bootsect.o arch/x86_64/boot/bootsect.S

deps_arch/x86_64/boot/bootsect.o := \
  arch/x86_64/boot/bootsect.S \
  include/asm/boot.h \

arch/x86_64/boot/bootsect.o: $(deps_arch/x86_64/boot/bootsect.o)

$(deps_arch/x86_64/boot/bootsect.o):
