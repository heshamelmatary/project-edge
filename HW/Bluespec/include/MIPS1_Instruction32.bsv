/* MIPS1 Instruction formats and related functions */

package MIPS1_Instruction32;

/*****************************************************************
* MIPS1 instructions have three categories:
*
* I-Type  -> | OpCode[31:26] | rs[25:21] | rt[20:16] | Imm[15:0] | 
* R-Type  -> | OpCode[31:26] | rs[25:21] | rt[20:16] | rd[15:11] | shamt[10:6] | funct[5:0] |
* J-Type  -> | OpCode[31:26] | addr[25:0]|
*
*****************************************************************/

typedef enum {
  /* R-Type instruction, Inspect funct then */
  RTYPE = 0,

  /* Branching/Jumping */
  BLTZ  = 1, /* BGEZ  = 1, */
  JMP   = 2,
  JAL   = 3,
  BEQ   = 4,
  BNE   = 5,
  BLEZ  = 6,
  BGTZ  = 7,
  
  /* Immediates */
  ADDI  = 8,
  ADDIU = 9,
  SLTI  = 10,
  SLTIU = 11,
  ANDI  = 12,
  ORI   = 13,
  XORI  = 14,

  /* loads */
  LUI   = 15,
  CP0   = 16, /* mfc0, mtc0 */
  MUL   = 28,
  LB    = 32,
  LH    = 33,
  LW    = 35,
  LBU   = 36,
  LHU   = 37,

  /* stores */
  SB    = 40,
  SH    = 41,
  SW    = 43,
  
  /* load/store floating point */
  LWC1  = 49,
  SWC1  = 56
  
} MIPS1_Instruction_OpCode deriving(Bits, Eq);

typedef enum {
  SLL     = 0,
  SRL     = 2,
  SRA     = 3,
  SLLV    = 4,
  SRLV    = 6,
  SRAV    = 7,
  JR      = 8,
  JALR    = 9,
  SYSCALL = 12,
  BREAK   = 13,
  MFHI    = 16,
  MTHI    = 17,
  MFLO    = 18,
  MTLO    = 19,
  MULT    = 24,
  MULTU   = 25,
  DIV     = 26,
  DIVU    = 27,
  ADD     = 32,
  ADDU    = 33,
  SUB     = 34,
  SUBU    = 35,
  AND     = 36,
  OR      = 37,
  XOR     = 38,
  SLT     = 42,
  SLTU    = 43
} MIPS1_Instruction_Funct deriving(Bits, Eq);

`define Instruction_OpCode MIPS1_Instruction_Opcode;

endpackage
