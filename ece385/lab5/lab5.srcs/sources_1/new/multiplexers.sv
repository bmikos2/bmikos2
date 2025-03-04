`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2025 09:44:04 AM
// Design Name: 
// Module Name: multiplexers
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module busMUX #(
    parameter DATA_WIDTH = 16
)(
    input logic [DATA_WIDTH-1:0] IN [4],
    input logic [3:0] Select,
    
    output logic [DATA_WIDTH-1:0] OUT
    );
    
    always_comb begin
        case(Select)
            4'b0001: OUT = IN[0];
            4'b0010: OUT = IN[1];
            4'b0100: OUT = IN[2];
            4'b1000: OUT = IN[3];
            default: OUT = {DATA_WIDTH{1'b0}}; // drives BUS to all zeros
        endcase
    end
endmodule

module MUX #( //defaults to Four-To-One MUX
    parameter DATA_WIDTH = 16,
    parameter NUM_IN = 4,
    parameter NUM_Select = 2 // could make a function to calculate this number,
                             //   but it would temporarily use memory
                             //   make sure to define if not Four-To-One MUX
)(
    input logic [DATA_WIDTH-1:0] IN[NUM_IN],
    input logic [NUM_Select-1:0] Select,
    
    output logic [DATA_WIDTH-1:0] OUT
    );
    
    assign OUT = IN[Select];

endmodule

