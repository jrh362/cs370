/*
 * Automatically generated C config: don't edit
 * Linux kernel version: 2.6.22.19-HERMAN
 * Fri Aug  2 16:37:34 2019
 */
/* ld script to make x86-64 Linux kernel
 * Written by Martin Mares <mj@atrey.karlin.mff.cuni.cz>;
 */
/* Align . to a 8 byte boundary equals to maximum function alignment. */
/* .data section */
/* RODATA provided for backward compatibility.
 * All archs are supposed to use RO_DATA() */
/* .text section. Map to function alignment to avoid address changes
 * during second ld run in second ld pass when generating System.map */
/* sched.text is aling to function alignment to secure we have same
 * address even at second ld pass when generating System.map */
/* spinlock.text is aling to function alignment to secure we have same
 * address even at second ld pass when generating System.map */
  /* DWARF debug sections.
		Symbols in the DWARF debugging sections are relative to
		the beginning of the section so we begin them at 0.  */
  /* Stabs debugging sections.  */
/* const.h: Macros for dealing with constants.  */
/* Some constant macros are used in both assembler and
 * C code.  Therefore we cannot annotate them always with
 * 'UL' and other type specifiers unilaterally.  We
 * use the following macros to deal with this.
 */
/* PAGE_SHIFT determines the page size */
/*
 * Make sure kernel is aligned to 2MB address. Catching it at compile
 * time is better. Change your config file and compile the kernel
 * for a 2MB aligned address (CONFIG_PHYSICAL_START)
 */
/* to align the pointer to the (next) page boundary */
/* See Documentation/x86_64/mm.txt for a description of the memory map. */
OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64", "elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(phys_startup_64)
jiffies_64 = jiffies;
_proxy_pda = 1;
PHDRS {
 text PT_LOAD FLAGS(5); /* R_E */
 data PT_LOAD FLAGS(7); /* RWE */
 user PT_LOAD FLAGS(7); /* RWE */
 data.init PT_LOAD FLAGS(7); /* RWE */
 note PT_NOTE FLAGS(4); /* R__ */
}
SECTIONS
{
  . = (0xffffffff80000000 + 0x200000);
  phys_startup_64 = startup_64 - 0xffffffff80000000;
  _text = .; /* Text and read-only data */
  .text : AT(ADDR(.text) - 0xffffffff80000000) {
 /* First the code that has to be first for bootstrapping */
 *(.bootstrap.text)
 _stext = .;
 /* Then the rest */
 . = ALIGN(8); *(.text) *(.text.init.refok)
 . = ALIGN(8); __sched_text_start = .; *(.sched.text) __sched_text_end = .;
 . = ALIGN(8); __lock_text_start = .; *(.spinlock.text) __lock_text_end = .;
 . = ALIGN(8); __kprobes_text_start = .; *(.kprobes.text) __kprobes_text_end = .;
 *(.fixup)
 *(.gnu.warning)
 } :text = 0x9090
      /* out-of-line lock text */
  .text.lock : AT(ADDR(.text.lock) - 0xffffffff80000000) { *(.text.lock) }
  _etext = .; /* End of text section */
  . = ALIGN(16); /* Exception table */
  __start___ex_table = .;
  __ex_table : AT(ADDR(__ex_table) - 0xffffffff80000000) { *(__ex_table) }
  __stop___ex_table = .;
  . = ALIGN(8); __bug_table : AT(ADDR(__bug_table) - 0xffffffff80000000) { __start___bug_table = .; *(__bug_table) __stop___bug_table = .; }
  . = ALIGN((4096)); .rodata : AT(ADDR(.rodata) - 0xffffffff80000000) { __start_rodata = .; *(.rodata) *(.rodata.*) *(__vermagic) } .rodata1 : AT(ADDR(.rodata1) - 0xffffffff80000000) { *(.rodata1) } .pci_fixup : AT(ADDR(.pci_fixup) - 0xffffffff80000000) { __start_pci_fixups_early = .; *(.pci_fixup_early) __end_pci_fixups_early = .; __start_pci_fixups_header = .; *(.pci_fixup_header) __end_pci_fixups_header = .; __start_pci_fixups_final = .; *(.pci_fixup_final) __end_pci_fixups_final = .; __start_pci_fixups_enable = .; *(.pci_fixup_enable) __end_pci_fixups_enable = .; __start_pci_fixups_resume = .; *(.pci_fixup_resume) __end_pci_fixups_resume = .; } .rio_route : AT(ADDR(.rio_route) - 0xffffffff80000000) { __start_rio_route_ops = .; *(.rio_route_ops) __end_rio_route_ops = .; } __ksymtab : AT(ADDR(__ksymtab) - 0xffffffff80000000) { __start___ksymtab = .; *(__ksymtab) __stop___ksymtab = .; } __ksymtab_gpl : AT(ADDR(__ksymtab_gpl) - 0xffffffff80000000) { __start___ksymtab_gpl = .; *(__ksymtab_gpl) __stop___ksymtab_gpl = .; } __ksymtab_unused : AT(ADDR(__ksymtab_unused) - 0xffffffff80000000) { __start___ksymtab_unused = .; *(__ksymtab_unused) __stop___ksymtab_unused = .; } __ksymtab_unused_gpl : AT(ADDR(__ksymtab_unused_gpl) - 0xffffffff80000000) { __start___ksymtab_unused_gpl = .; *(__ksymtab_unused_gpl) __stop___ksymtab_unused_gpl = .; } __ksymtab_gpl_future : AT(ADDR(__ksymtab_gpl_future) - 0xffffffff80000000) { __start___ksymtab_gpl_future = .; *(__ksymtab_gpl_future) __stop___ksymtab_gpl_future = .; } __kcrctab : AT(ADDR(__kcrctab) - 0xffffffff80000000) { __start___kcrctab = .; *(__kcrctab) __stop___kcrctab = .; } __kcrctab_gpl : AT(ADDR(__kcrctab_gpl) - 0xffffffff80000000) { __start___kcrctab_gpl = .; *(__kcrctab_gpl) __stop___kcrctab_gpl = .; } __kcrctab_unused : AT(ADDR(__kcrctab_unused) - 0xffffffff80000000) { __start___kcrctab_unused = .; *(__kcrctab_unused) __stop___kcrctab_unused = .; } __kcrctab_unused_gpl : AT(ADDR(__kcrctab_unused_gpl) - 0xffffffff80000000) { __start___kcrctab_unused_gpl = .; *(__kcrctab_unused_gpl) __stop___kcrctab_unused_gpl = .; } __kcrctab_gpl_future : AT(ADDR(__kcrctab_gpl_future) - 0xffffffff80000000) { __start___kcrctab_gpl_future = .; *(__kcrctab_gpl_future) __stop___kcrctab_gpl_future = .; } __ksymtab_strings : AT(ADDR(__ksymtab_strings) - 0xffffffff80000000) { *(__ksymtab_strings) } __param : AT(ADDR(__param) - 0xffffffff80000000) { __start___param = .; *(__param) __stop___param = .; __end_rodata = .; } . = ALIGN((4096));
  . = ALIGN((1 << 12)); /* Align data segment to page size boundary */
    /* Data */
  .data : AT(ADDR(.data) - 0xffffffff80000000) {
 *(.data) *(.data.init.refok)
 CONSTRUCTORS
 } :data
  _edata = .; /* End of data section */
  . = ALIGN((1 << 12));
  . = ALIGN(128);
  .data.cacheline_aligned : AT(ADDR(.data.cacheline_aligned) - 0xffffffff80000000) {
 *(.data.cacheline_aligned)
  }
  . = ALIGN(128);
  .data.read_mostly : AT(ADDR(.data.read_mostly) - 0xffffffff80000000) {
   *(.data.read_mostly)
  }
  . = (-10*1024*1024);
  .vsyscall_0 : AT(((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095))) { *(.vsyscall_0) } :user
  __vsyscall_0 = ((ADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095));
  . = ALIGN(128);
  .vsyscall_fn : AT((ADDR(.vsyscall_fn) - ((-10*1024*1024) - ((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095))))) { *(.vsyscall_fn) }
  . = ALIGN(128);
  .vsyscall_gtod_data : AT((ADDR(.vsyscall_gtod_data) - ((-10*1024*1024) - ((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095)))))
  { *(.vsyscall_gtod_data) }
  vsyscall_gtod_data = (ADDR(.vsyscall_gtod_data) - ((-10*1024*1024) - ((ADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095))));
  .vsyscall_1 ADDR(.vsyscall_0) + 1024: AT((ADDR(.vsyscall_1) - ((-10*1024*1024) - ((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095)))))
  { *(.vsyscall_1) }
  .vsyscall_2 ADDR(.vsyscall_0) + 2048: AT((ADDR(.vsyscall_2) - ((-10*1024*1024) - ((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095)))))
  { *(.vsyscall_2) }
  .vgetcpu_mode : AT((ADDR(.vgetcpu_mode) - ((-10*1024*1024) - ((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095))))) { *(.vgetcpu_mode) }
  vgetcpu_mode = (ADDR(.vgetcpu_mode) - ((-10*1024*1024) - ((ADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095))));
  . = ALIGN(128);
  .jiffies : AT((ADDR(.jiffies) - ((-10*1024*1024) - ((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095))))) { *(.jiffies) }
  jiffies = (ADDR(.jiffies) - ((-10*1024*1024) - ((ADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095))));
  .vsyscall_3 ADDR(.vsyscall_0) + 3072: AT((ADDR(.vsyscall_3) - ((-10*1024*1024) - ((LOADADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095)))))
  { *(.vsyscall_3) }
  . = ((ADDR(.data.read_mostly) + SIZEOF(.data.read_mostly) + 4095) & ~(4095)) + 4096;
  . = ALIGN(8192); /* init_task */
  .data.init_task : AT(ADDR(.data.init_task) - 0xffffffff80000000) {
 *(.data.init_task)
  }:data.init
  . = ALIGN(4096);
  .data.page_aligned : AT(ADDR(.data.page_aligned) - 0xffffffff80000000) {
 *(.data.page_aligned)
  }
  /* might get freed after init */
  . = ALIGN(4096);
  __smp_alt_begin = .;
  __smp_alt_instructions = .;
  .smp_altinstructions : AT(ADDR(.smp_altinstructions) - 0xffffffff80000000) {
 *(.smp_altinstructions)
  }
  __smp_alt_instructions_end = .;
  . = ALIGN(8);
  __smp_locks = .;
  .smp_locks : AT(ADDR(.smp_locks) - 0xffffffff80000000) {
 *(.smp_locks)
  }
  __smp_locks_end = .;
  .smp_altinstr_replacement : AT(ADDR(.smp_altinstr_replacement) - 0xffffffff80000000) {
 *(.smp_altinstr_replacement)
  }
  . = ALIGN(4096);
  __smp_alt_end = .;
  . = ALIGN(4096); /* Init code and data */
  __init_begin = .;
  .init.text : AT(ADDR(.init.text) - 0xffffffff80000000) {
 _sinittext = .;
 *(.init.text)
 _einittext = .;
  }
  __initdata_begin = .;
  .init.data : AT(ADDR(.init.data) - 0xffffffff80000000) { *(.init.data) }
  __initdata_end = .;
  . = ALIGN(16);
  __setup_start = .;
  .init.setup : AT(ADDR(.init.setup) - 0xffffffff80000000) { *(.init.setup) }
  __setup_end = .;
  __initcall_start = .;
  .initcall.init : AT(ADDR(.initcall.init) - 0xffffffff80000000) {
 *(.initcall0.init) *(.initcall0s.init) *(.initcall1.init) *(.initcall1s.init) *(.initcall2.init) *(.initcall2s.init) *(.initcall3.init) *(.initcall3s.init) *(.initcall4.init) *(.initcall4s.init) *(.initcall5.init) *(.initcall5s.init) *(.initcallrootfs.init) *(.initcall6.init) *(.initcall6s.init) *(.initcall7.init) *(.initcall7s.init)
  }
  __initcall_end = .;
  __con_initcall_start = .;
  .con_initcall.init : AT(ADDR(.con_initcall.init) - 0xffffffff80000000) {
 *(.con_initcall.init)
  }
  __con_initcall_end = .;
  .security_initcall.init : AT(ADDR(.security_initcall.init) - 0xffffffff80000000) { __security_initcall_start = .; *(.security_initcall.init) __security_initcall_end = .; }
  . = ALIGN(8);
  __alt_instructions = .;
  .altinstructions : AT(ADDR(.altinstructions) - 0xffffffff80000000) {
 *(.altinstructions)
  }
  __alt_instructions_end = .;
  .altinstr_replacement : AT(ADDR(.altinstr_replacement) - 0xffffffff80000000) {
 *(.altinstr_replacement)
  }
  /* .exit.text is discard at runtime, not link time, to deal with references
     from .altinstructions and .eh_frame */
  .exit.text : AT(ADDR(.exit.text) - 0xffffffff80000000) { *(.exit.text) }
  .exit.data : AT(ADDR(.exit.data) - 0xffffffff80000000) { *(.exit.data) }
  . = ALIGN(4096);
  __initramfs_start = .;
  .init.ramfs : AT(ADDR(.init.ramfs) - 0xffffffff80000000) { *(.init.ramfs) }
  __initramfs_end = .;
  . = ALIGN(4096);
  __per_cpu_start = .;
  .data.percpu : AT(ADDR(.data.percpu) - 0xffffffff80000000) { *(.data.percpu) }
  __per_cpu_end = .;
  . = ALIGN(4096);
  __init_end = .;
  . = ALIGN(4096);
  __nosave_begin = .;
  .data_nosave : AT(ADDR(.data_nosave) - 0xffffffff80000000) { *(.data.nosave) }
  . = ALIGN(4096);
  __nosave_end = .;
  __bss_start = .; /* BSS */
  .bss : AT(ADDR(.bss) - 0xffffffff80000000) {
 *(.bss.page_aligned)
 *(.bss)
 }
  __bss_stop = .;
  _end = . ;
  /* Sections to be discarded */
  /DISCARD/ : {
 *(.exitcall.exit)
 *(.eh_frame)
 }
  .stab 0 : { *(.stab) } .stabstr 0 : { *(.stabstr) } .stab.excl 0 : { *(.stab.excl) } .stab.exclstr 0 : { *(.stab.exclstr) } .stab.index 0 : { *(.stab.index) } .stab.indexstr 0 : { *(.stab.indexstr) } .comment 0 : { *(.comment) }
  .debug 0 : { *(.debug) } .line 0 : { *(.line) } .debug_srcinfo 0 : { *(.debug_srcinfo) } .debug_sfnames 0 : { *(.debug_sfnames) } .debug_aranges 0 : { *(.debug_aranges) } .debug_pubnames 0 : { *(.debug_pubnames) } .debug_info 0 : { *(.debug_info .gnu.linkonce.wi.*) } .debug_abbrev 0 : { *(.debug_abbrev) } .debug_line 0 : { *(.debug_line) } .debug_frame 0 : { *(.debug_frame) } .debug_str 0 : { *(.debug_str) } .debug_loc 0 : { *(.debug_loc) } .debug_macinfo 0 : { *(.debug_macinfo) } .debug_weaknames 0 : { *(.debug_weaknames) } .debug_funcnames 0 : { *(.debug_funcnames) } .debug_typenames 0 : { *(.debug_typenames) } .debug_varnames 0 : { *(.debug_varnames) }
}
