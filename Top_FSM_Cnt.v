module Top_FSM_Cnt(CLK_F,RST_F,Equal_F,Unlock_F,Admin_Lock_F,Alarm_F,Count_F);
input CLK_F,RST_F,Equal_F;
output Unlock_F,Admin_Lock_F,Alarm_F;
output [1:0]Count_F;
//wire En_F;

FSM_Proj U1(.clk(CLK_F),.rst(RST_F),.equal(Equal_F),.unlock(Unlock_F),.alarm(Alarm_F));
Count_2_Proj U11(.clk(CLK_F),.rst(RST_F),.en(Alarm_F),.count(Count_F),.Admin_Lock(Admin_Lock_F));


endmodule
