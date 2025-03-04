//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//    Revised 12-29-2023
//    Revised 09-25-2024
//------------------------------------------------------------------------------

module cpu (
    input   logic        clk,
    input   logic        reset,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,
    output  logic [15:0] mem_wdata,
    output  logic [15:0] mem_addr,
    output  logic        mem_mem_ena,
    output  logic        mem_wr_ena
);


// Internal connections, follow the datapath block diagram and add the additional needed signals
logic ld_mar; 
logic ld_mdr; 
logic ld_ir; 
logic ld_pc; 
logic ld_led;

logic gate_pc;
logic gate_mdr;

logic [1:0] pcmux;
logic [15:0] BUS;
logic [15:0] mioMUX_OUT;
logic [15:0] SR2MUX_OUT;

logic [15:0] mar; 
logic [15:0] mdr;
logic [15:0] ir;
logic [15:0] pc;
logic ben;

// reg_file variables:
logic [15:0] SR1OUT;
logic [15:0] SR2OUT;


assign mem_addr = mar;
assign mem_wdata = mdr;

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly
control cpu_control (
    .*
);


assign led_o = ir;
assign hex_display_debug = ir;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (mdr),

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc),
    .data_i(pc+1), //incrementing PC, will need to be changed for lab5.2

    .data_q(pc)
);

load_reg #(.DATA_WIDTH(16)) mar_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_mar),
    .data_i (BUS),

    .data_q (mar)
);

load_reg #(.DATA_WIDTH(16)) mdr_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_mdr),
    .data_i (mioMUX_OUT),

    .data_q (mdr)
);

busMUX busMUX(
    .IN({pc, ir, mar, mdr}),
    .Select({gate_mdr, 1'b0, 1'b0, gate_pc}),
    
    .OUT(BUS)
);

MUX #(.NUM_IN(2), .NUM_Select(1)) mioMUX(
    .IN({BUS, mem_rdata}),
    .Select(mem_mem_ena),
    
    .OUT(mioMUX_OUT)
);

MUX #(.NUM_IN(2), .NUM_Select(1)) SR2MUX (
    .IN({ {{(11){ir[4]}}, ir[4:0]} , SR2OUT}),
    .Select(), //TODO: from control.sv
    
    .OUT(SR2MUX_OUT) // goes to `B` of ALU
);



endmodule