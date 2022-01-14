module Encoder_proj(Buttons,Out );
input [15:0]Buttons;
output reg [3:0]Out;


always@(*)
begin 
case(Buttons)
16'b0000_0000_0000_0001 : Out=4'b0000;  // Button 0 is High
16'b0000_0000_0000_0010 : Out=4'b0001;   // Button 1 is High
16'b0000_0000_0000_0100 : Out=4'b0010;  // Button 2 is High
16'b0000_0000_0000_1000 : Out=4'b0011;  // Button 3 is High
16'b0000_0000_0001_0000 : Out=4'b0100;  // Button 4 is High
16'b0000_0000_0010_0000 : Out=4'b0101;  // Button 5 is High
16'b0000_0000_0100_0000 : Out=4'b0110;  // Button 6 is High
16'b0000_0000_1000_0000 : Out=4'b0111;  // Button 7 is High
16'b0000_0001_0000_0000 : Out=4'b1000;  // Button 8 is High
16'b0000_0010_0000_0000 : Out=4'b1001;  // Button 9 is High
 default : Out=4'b0000;
endcase

end 


endmodule
