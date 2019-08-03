cmd_arch/x86_64/lib/iomap_copy.o := gcc -Wp,-MD,arch/x86_64/lib/.iomap_copy.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64    -c -o arch/x86_64/lib/iomap_copy.o arch/x86_64/lib/iomap_copy.S

deps_arch/x86_64/lib/iomap_copy.o := \
  arch/x86_64/lib/iomap_copy.S \
  include/linux/linkage.h \
  include/asm/linkage.h \
  include/asm/dwarf2.h \
    $(wildcard include/config/as/cfi.h) \
    $(wildcard include/config/as/cfi/signal/frame.h) \

arch/x86_64/lib/iomap_copy.o: $(deps_arch/x86_64/lib/iomap_copy.o)

$(deps_arch/x86_64/lib/iomap_copy.o):
