module Comparator_ins(CLK_Comp,RST_Comp,EN_Comp,BUTTONS_Comp,Reg_in_Comp,Equal_Comp) ;
input CLK_Comp,RST_Comp,EN_Comp;
input [15:0]BUTTONS_Comp;
input  [15:0]Reg_in_Comp;
output wire  Equal_Comp;

//internal connections
wire [15:0]Reg_Out_Comp;
wire [15:0]OUT_DATA_Comp;


Top_Enc_Shift u11(.CLK(CLK_Comp),.RST(RST_Comp),.EN(EN_Comp),.BUTTONS(BUTTONS_Comp),.OUT_DATA(OUT_DATA_Comp));
Resgister u22(.clk(CLK_Comp),.rst(RST_Comp),.en(EN_Comp),.reg_in(Reg_in_Comp),.reg_out(Reg_Out_Comp));
Compartor u33(.a(OUT_DATA_Comp),.b(Reg_Out_Comp),.equal(Equal_Comp));



endmodule
