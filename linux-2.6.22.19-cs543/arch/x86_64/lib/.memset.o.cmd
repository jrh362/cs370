cmd_arch/x86_64/lib/memset.o := gcc -Wp,-MD,arch/x86_64/lib/.memset.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64    -c -o arch/x86_64/lib/memset.o arch/x86_64/lib/memset.S

deps_arch/x86_64/lib/memset.o := \
  arch/x86_64/lib/memset.S \
  include/linux/linkage.h \
  include/asm/linkage.h \
  include/asm/dwarf2.h \
    $(wildcard include/config/as/cfi.h) \
    $(wildcard include/config/as/cfi/signal/frame.h) \
  include/asm/cpufeature.h \

arch/x86_64/lib/memset.o: $(deps_arch/x86_64/lib/memset.o)

$(deps_arch/x86_64/lib/memset.o):
