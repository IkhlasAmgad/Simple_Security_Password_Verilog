module Count_2_Proj(clk,rst,en,count,Admin_Lock);
input clk,rst,en;
output[1:0] count;
reg [1: 0]count_temp;
output reg Admin_Lock;

always@(posedge clk or posedge rst)
begin
if(rst)
begin
count_temp<=2'b00;
Admin_Lock<=1'b0;
end
else
if(en)
begin
if(count_temp==2'b10)
begin
Admin_Lock<=1'b1;
count_temp<=2'b00;
end
else
count_temp<=count_temp+2'b01;
end
end

assign count=count_temp;
endmodule
