cmd_arch/x86_64/boot/setup.o := gcc -Wp,-MD,arch/x86_64/boot/.setup.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -D__KERNEL__ -fno-stack-protector -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__   -m64 -DSVGA_MODE=NORMAL_VGA  -D__BIG_KERNEL__   -c -o arch/x86_64/boot/setup.o arch/x86_64/boot/setup.S

deps_arch/x86_64/boot/setup.o := \
  arch/x86_64/boot/setup.S \
    $(wildcard include/config/relocatable.h) \
  include/asm/segment.h \
  include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
    $(wildcard include/config/smp.h) \
  include/linux/utsrelease.h \
  include/linux/compile.h \
  include/asm/boot.h \
  include/asm/e820.h \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
  include/asm/page.h \
    $(wildcard include/config/physical/start.h) \
  include/linux/const.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \
  include/asm/setup.h \
  arch/x86_64/boot/../kernel/verify_cpu.S \
  include/asm/cpufeature.h \
  arch/x86_64/boot/../../i386/boot/edd.S \
    $(wildcard include/config/edd.h) \
  include/linux/edd.h \
  arch/x86_64/boot/../../i386/boot/video.S \
    $(wildcard include/config/video/svga.h) \
    $(wildcard include/config/video/vesa.h) \
    $(wildcard include/config/video/compact.h) \
    $(wildcard include/config/video/retain.h) \
    $(wildcard include/config/video/local.h) \
    $(wildcard include/config/video/400/hack.h) \
    $(wildcard include/config/video/gfx/hack.h) \
    $(wildcard include/config/video/select.h) \
    $(wildcard include/config/firmware/edid.h) \

arch/x86_64/boot/setup.o: $(deps_arch/x86_64/boot/setup.o)

$(deps_arch/x86_64/boot/setup.o):
