OUTPUT_ARCH(mips)
ENTRY(main)
SECTIONS
{
        . = 0x80000000;
        .text : 
        {
            *(.text)
            _etext = .;
        }

        . = 0x80400000;
        .data : 
        {
            *(.data)              
        }

	.bss :
        {
            *(.bss)
        }

} 
