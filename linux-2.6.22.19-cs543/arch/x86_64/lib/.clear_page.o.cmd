cmd_arch/x86_64/lib/clear_page.o := gcc -Wp,-MD,arch/x86_64/lib/.clear_page.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64    -c -o arch/x86_64/lib/clear_page.o arch/x86_64/lib/clear_page.S

deps_arch/x86_64/lib/clear_page.o := \
  arch/x86_64/lib/clear_page.S \
  include/linux/linkage.h \
  include/asm/linkage.h \
  include/asm/dwarf2.h \
    $(wildcard include/config/as/cfi.h) \
    $(wildcard include/config/as/cfi/signal/frame.h) \
  include/asm/cpufeature.h \

arch/x86_64/lib/clear_page.o: $(deps_arch/x86_64/lib/clear_page.o)

$(deps_arch/x86_64/lib/clear_page.o):
