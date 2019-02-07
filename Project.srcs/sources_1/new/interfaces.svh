`ifndef INTERFACES_H
`define INTERFACES_H

`define D_WIDTH 32

//`define FWORD real
`define FWORD logic [`D_WIDTH - 1:0]

interface I_FMA (
    input wire clk,
    input wire mode,
    input `FWORD a,
    input `FWORD b,
    input `FWORD c,
    output `FWORD out
);

endinterface

//Copied from NYUZI
typedef enum logic[5:0] {
    OP_OR                   = 6'b000000,    // Bitwise logical or
    OP_AND                  = 6'b000001,    // bitwise logical and
    // OP_SYSCALL              = 6'b000010,    // raise syscall trap
    OP_XOR                  = 6'b000011,    // bitwise logical exclusive or
    OP_ADD_I                = 6'b000101,    // Add integer
    OP_SUB_I                = 6'b000110,    // Subtract integer
    OP_MULL_I               = 6'b000111,    // Multiply integer low
    OP_MULH_U               = 6'b001000,    // Unsigned multiply, return high bits
    OP_ASHR                 = 6'b001001,    // Arithmetic shift right (sign extend)
    OP_SHR                  = 6'b001010,    // Logical shift right (no sign extend)
    OP_SHL                  = 6'b001011,    // Logical shift left
    OP_CLZ                  = 6'b001100,    // Count leading zeroes
    // OP_SHUFFLE              = 6'b001101,    // Shuffle vector lanes
    OP_CTZ                  = 6'b001110,    // Count trailing zeroes
    OP_MOVE                 = 6'b001111,
    OP_CMPEQ_I              = 6'b010000,    // Integer equal
    OP_CMPNE_I              = 6'b010001,    // Integer not equal
    OP_CMPGT_I              = 6'b010010,    // Integer greater (signed)
    OP_CMPGE_I              = 6'b010011,    // Integer greater or equal (signed)
    OP_CMPLT_I              = 6'b010100,    // Integer less than (signed)
    OP_CMPLE_I              = 6'b010101,    // Integer less than or equal (signed)
    OP_CMPGT_U              = 6'b010110,    // Integer greater than (unsigned)
    OP_CMPGE_U              = 6'b010111,    // Integer greater or equal (unsigned)
    OP_CMPLT_U              = 6'b011000,    // Integer less than (unsigned)
    OP_CMPLE_U              = 6'b011001,    // Integer less than or equal (unsigned)
    // OP_GETLANE              = 6'b011010,    // Getlane
    OP_FTOI                 = 6'b011011,    // Float to integer
    OP_RECIPROCAL           = 6'b011100,    // Reciprocal estimate
    OP_SEXT8                = 6'b011101,    // Sign extend 8 bit value
    OP_SEXT16               = 6'b011110,    // Sign extend 16 bit value
    OP_MULH_I               = 6'b011111,    // Signed multiply high
    OP_ADD_F                = 6'b100000,    // Add floating point
    OP_SUB_F                = 6'b100001,    // Subtract floating point
    OP_MUL_F                = 6'b100010,    // Multiply floating point
    OP_ITOF                 = 6'b101010,    // Integer to float
    OP_CMPGT_F              = 6'b101100,    // Floating point greater than
    OP_CMPLT_F              = 6'b101110,    // Floating point less than
    OP_CMPGE_F              = 6'b101101,    // Floating point greater or equal
    OP_CMPLE_F              = 6'b101111,    // Floating point less than or equal
    OP_CMPEQ_F              = 6'b110000,    // Floating point equal
    OP_CMPNE_F              = 6'b110001     // Floating point not-equal
    // OP_BREAKPOINT           = 6'b111110
} alu_op_t;


typedef struct packed{
    logic rw;

} mem_op_t;



`endif