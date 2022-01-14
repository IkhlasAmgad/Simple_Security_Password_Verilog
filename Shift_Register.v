module Shift_Register(clk,rst,data_in,data_out,en);
input clk,en,rst;
input [3:0]data_in;
output wire [15:0]data_out;
reg [15:0]temp_out;

always@(posedge clk or posedge rst)
 begin
  if(rst)
   begin
     temp_out<=16'b0;
	 end
	 else if(en)
	 begin
	      temp_out<={data_in,data_out[15:4]};
	 end
 
 end
 assign data_out=temp_out;
 endmodule
 
