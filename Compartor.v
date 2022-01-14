module Compartor (
    input wire [15:0] a,
    input wire [15:0] b,
    output reg equal
    );

 always @(*)
	begin
        if (a==b)
        equal =1'b1;
		else
		equal=1'b0;
		end
endmodule
