/* Types are defined here for all other Bluespec files to include */

`include "configure.bsv"

`ifdef (`ISA_FORMAT == `__ISA_MIPS1_32__)

  `include "MIPS1_Instruction32.bsv"
  `define Instruction_OpCode MIPS1_Instruction_Opcode
  `define REG_WORD  Bit#(32)

`endif
