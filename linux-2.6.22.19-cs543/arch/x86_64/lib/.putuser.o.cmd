cmd_arch/x86_64/lib/putuser.o := gcc -Wp,-MD,arch/x86_64/lib/.putuser.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64    -c -o arch/x86_64/lib/putuser.o arch/x86_64/lib/putuser.S

deps_arch/x86_64/lib/putuser.o := \
  arch/x86_64/lib/putuser.S \
  include/linux/linkage.h \
  include/asm/linkage.h \
  include/asm/dwarf2.h \
    $(wildcard include/config/as/cfi.h) \
    $(wildcard include/config/as/cfi/signal/frame.h) \
  include/asm/page.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/flatmem.h) \
  include/linux/const.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \
  include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  include/asm/asm-offsets.h \
  include/asm/thread_info.h \
    $(wildcard include/config/debug/stack/usage.h) \
  include/asm/types.h \
  include/asm/pda.h \
    $(wildcard include/config/cc/stackprotector.h) \

arch/x86_64/lib/putuser.o: $(deps_arch/x86_64/lib/putuser.o)

$(deps_arch/x86_64/lib/putuser.o):
