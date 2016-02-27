`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:09 10/27/2011 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file(
	 input wire CLK,
	 input wire RegWrite,
    input wire [2:0] srcA,
    input wire [2:0] srcB,
    input wire [15:0] writeValue,
	 
    output [15:0] ReadA,
    output [15:0] ReadB
    );
	 
reg [7:0] registers[7:0];

assign ReadA = registers[srcA];
assign ReadB = registers[srcB];

always @ (posedge CLK)
begin
  if (RegWrite )//&& (writeReg != 3'b000))
  begin
    registers[srcA] <= writeValue;
	 //$display("Register write %d = %d",srcA,writeValue);
	 $display("Register0: ", registers[0]);
	 $display("Register1: ", registers[1]);
	 $display("Register2: ", registers[2]);
	 $display("Register3: ", registers[3]);
	 $display("Register4: ", registers[4]);
	 $display("Register5: ", registers[5]);
	 $display("Register6: ", registers[6]);
	 $display("Register7: ", registers[7]);
	 $display("");
  end
end

endmodule
