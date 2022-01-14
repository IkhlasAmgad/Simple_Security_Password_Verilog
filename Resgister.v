module Resgister( clk,rst,en,reg_in,reg_out);
input clk,rst,en;
input [15:0]reg_in;
output reg [15:0]reg_out;
always @ (posedge clk or posedge rst)
begin
if (rst )
reg_out<= 16'b0;
else if (en)
reg_out<= reg_in;
end
endmodule
