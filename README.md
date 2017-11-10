elf2dfuse
=========

This tool is a possible aid for STM32 developers who want to generate a DfuSe image directly from a STM32 ELF object file.

## Limitations

DFU (and DfuSe) images must encode the VID:PID of the target being programmed.  The source code has #defines for the VID:PID to be 0x0483:0xdf11 (as this was applicable to the target used for testing), but it is unclear to me how many different variants STMicro may be using.

## Sample Usage

```
elf2dfuse myapp.elf myapp.dfu
```

