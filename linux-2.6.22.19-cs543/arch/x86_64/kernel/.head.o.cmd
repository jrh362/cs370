cmd_arch/x86_64/kernel/head.o := gcc -Wp,-MD,arch/x86_64/kernel/.head.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64 -traditional   -c -o arch/x86_64/kernel/head.o arch/x86_64/kernel/head.S

deps_arch/x86_64/kernel/head.o := \
  arch/x86_64/kernel/head.S \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/acpi/sleep.h) \
    $(wildcard include/config/kallsyms.h) \
  include/linux/linkage.h \
  include/asm/linkage.h \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/acpi/hotplug/memory.h) \
  include/linux/compiler.h \
    $(wildcard include/config/enable/must/check.h) \
  include/asm/desc.h \
  include/asm/ldt.h \
  include/asm/segment.h \
  include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  include/asm/pgtable.h \
  include/linux/const.h \
  include/asm/page.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/flatmem.h) \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \
  include/asm/msr.h \
  include/asm/msr-index.h \
  include/asm-i386/msr-index.h \

arch/x86_64/kernel/head.o: $(deps_arch/x86_64/kernel/head.o)

$(deps_arch/x86_64/kernel/head.o):
