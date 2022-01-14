
module Top_Enc_Shift(CLK,RST,EN,BUTTONS,OUT_DATA);

input     CLK,RST,EN;
input     [15:0]BUTTONS;
output    [15:0]OUT_DATA;   //4 BUTTONS 
wire      [3:0]enc_out;

Encoder_proj  u1(.Buttons(BUTTONS), .Out(enc_out));
Shift_Register u2(.data_in(enc_out),.clk(CLK),.rst(RST),.en(EN),.data_out(OUT_DATA));

endmodule
