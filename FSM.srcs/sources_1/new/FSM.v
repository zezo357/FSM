`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2021 01:37:42 PM
// Design Name: 
// Module Name: FSM
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


module FSM(input in,input clk,input reset,output reg out,output reg [1:0]currentstate,output reg [1:0]nextstate);


always@(currentstate or in)
begin 
case (currentstate)
2'b00:if(in==1)begin nextstate<=2'b01; out<=0; end else begin nextstate<=2'b00; out<=0; end
2'b01:if(in==1)begin nextstate<=2'b01; out<=0; end else begin nextstate<=2'b10; out<=0; end
2'b10:if(in==1)begin nextstate<=2'b11; out<=0; end else begin nextstate<=2'b00; out<=0; end
2'b11:if(in==1)begin nextstate<=2'b01; out<=0; end else begin nextstate<=2'b00; out<=1; end
endcase
end

always@(posedge clk or reset)
begin
if(reset==1)
begin
currentstate<=2'b00;
out<=0;
end
else
currentstate<=nextstate;
end
endmodule
