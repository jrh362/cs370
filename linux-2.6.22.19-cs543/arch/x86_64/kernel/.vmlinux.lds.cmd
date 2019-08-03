cmd_arch/x86_64/kernel/vmlinux.lds := gcc -E -Wp,-MD,arch/x86_64/kernel/.vmlinux.lds.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h  -P -C -Ux86_64 -D__ASSEMBLY__ -o arch/x86_64/kernel/vmlinux.lds arch/x86_64/kernel/vmlinux.lds.S

deps_arch/x86_64/kernel/vmlinux.lds := \
  arch/x86_64/kernel/vmlinux.lds.S \
    $(wildcard include/config/x86/l1/cache/bytes.h) \
    $(wildcard include/config/x86/internode/cache/bytes.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
  include/asm-generic/vmlinux.lds.h \
  include/asm/page.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/flatmem.h) \
  include/linux/const.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \

arch/x86_64/kernel/vmlinux.lds: $(deps_arch/x86_64/kernel/vmlinux.lds)

$(deps_arch/x86_64/kernel/vmlinux.lds):
