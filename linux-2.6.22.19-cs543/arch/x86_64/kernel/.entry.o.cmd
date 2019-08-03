cmd_arch/x86_64/kernel/entry.o := gcc -Wp,-MD,arch/x86_64/kernel/.entry.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64 -traditional   -c -o arch/x86_64/kernel/entry.o arch/x86_64/kernel/entry.S

deps_arch/x86_64/kernel/entry.o := \
  arch/x86_64/kernel/entry.S \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/x86/mce.h) \
    $(wildcard include/config/kdb.h) \
  include/linux/linkage.h \
  include/asm/linkage.h \
  include/asm/segment.h \
  include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  include/asm/dwarf2.h \
    $(wildcard include/config/as/cfi.h) \
    $(wildcard include/config/as/cfi/signal/frame.h) \
  include/asm/calling.h \
  include/asm/asm-offsets.h \
  include/asm/msr.h \
  include/asm/msr-index.h \
  include/asm-i386/msr-index.h \
  include/asm/unistd.h \
  include/asm/thread_info.h \
    $(wildcard include/config/debug/stack/usage.h) \
  include/asm/page.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/flatmem.h) \
  include/linux/const.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \
  include/asm/types.h \
  include/asm/pda.h \
    $(wildcard include/config/cc/stackprotector.h) \
  include/asm/hw_irq.h \
  include/asm/irqflags.h \
  include/asm/processor-flags.h \
  include/asm-i386/processor-flags.h \

arch/x86_64/kernel/entry.o: $(deps_arch/x86_64/kernel/entry.o)

$(deps_arch/x86_64/kernel/entry.o):
