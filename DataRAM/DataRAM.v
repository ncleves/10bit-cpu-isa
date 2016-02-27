`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:
//
// Create Date:    19:25:24 11/16/2006
// Design Name:
// Module Name:    DataRAM
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module DataRAM(DataAddress, MemWrite, DataIn, DataOut, CLK);
    input CLK;

    input [15:0] DataAddress;
    
    input MemWrite;
    input [15:0] DataIn;//srcA

    output [15:0] DataOut;
    reg [15:0] DataOut;

    reg [15:0] my_memory [0:255];

    initial begin
        $readmemh("dataram_init.list", my_memory);
    end

    always @ (DataAddress)
        begin
            DataOut = my_memory[DataAddress];
				//$display("Memory read M[%d] = %d",DataAddress,DataOut);
        end

    always @ (posedge CLK)
        if(MemWrite) begin
            my_memory[DataAddress] = DataIn;
				//$display("Memory write M[%d] = %d",DataAddress,DataIn);
        end

endmodule
