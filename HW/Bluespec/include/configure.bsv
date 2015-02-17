/* Parametrize Edge core */

`define __ISA_MIPS1_32__  1 /* Default */
`define __FPGA_BOARD_Atlys__    1 /* Atlys */

`define ISA_FORMAT  `__ISA_MIPS1_32__
`define CLOCK_FREQ  50000000 /* 50MHz */
`define ENABLE_UART    1
`define UART_BUAD      115200

`define ENABLE_CACHES  0
`define ENABLE_DDR     0
`define FPGA_BOARD  `__FPGA_BOARD_Atlys__

