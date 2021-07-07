
`timescale 1ns / 1ps
module tb();
reg in,clk,reset;
wire out;
wire [1:0]Cs;
wire [1:0]Ns;
FSM f1(in,clk,reset,out,Cs,Ns);
//clk loop
initial 
    begin
    clk=0;
    while(1) 
    begin
    #5
    clk=~clk;
    end
    end 
initial begin
reset=1;
in=0;
#10 
reset=0;
in=1;
//seqence
#10
in=1;
#10
in=0;
#10
in=1;
#10
in=0;
//end of seqence
#10
in=1;
#10
in=0;
#10
in=0;
#10
in=1;
end
endmodule



