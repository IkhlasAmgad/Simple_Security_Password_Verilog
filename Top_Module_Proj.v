module Top_Module_Proj(CLK_Top,RST_Top,EN_Top,BUTTONS_Top,Reg_in_Top,Unlock_Top,Alarm_Top,Admin_Lock_Top,Count_Top);
input CLK_Top,RST_Top,EN_Top;
input [15:0]BUTTONS_Top;
input [15:0]Reg_in_Top;
output Unlock_Top,Alarm_Top,Admin_Lock_Top;
output [1:0]Count_Top;
/*Internal Wire*/
wire  Equal_Top;


Comparator_ins DUT_1(.CLK_Comp(CLK_Top),.RST_Comp(RST_Top),.EN_Comp(EN_Top)
                     ,.BUTTONS_Comp(BUTTONS_Top),.Reg_in_Comp(Reg_in_Top)
					 ,.Equal_Comp(Equal_Top));
					 
Top_FSM_Cnt DUT_2(.CLK_F(CLK_Top),.RST_F(RST_Top),.Equal_F(Equal_Top)
                 ,.Unlock_F(Unlock_Top),.Admin_Lock_F(Admin_Lock_Top)
				 ,.Alarm_F(Alarm_Top),.Count_F(Count_Top));
endmodule