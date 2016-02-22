`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:50 04/15/2014 
// Design Name: 
// Module Name:    immidiate_module-IM 
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
module immidiate_module-IM(
    input [2:0] IMIN,
    output [15:0] IMOUT
    );
always @ (IMIN)
begin
	case (IMIN)
		0 : IMOUT = 0;
		1 : IMOUT = 1;
		2 : IMOUT = 32;
		3 : IMOUT = 64;
		4 : IMOUT = 96;
		5 : IMOUT = -1;
		6 : IMOUT = 144;
		7 : IMOUT = 9;
		default : IMOUT = 15'b0;
	endcase

end

endmodule
