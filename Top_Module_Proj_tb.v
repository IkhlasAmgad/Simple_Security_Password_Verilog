module Top_Module_Proj_tb();
reg CLK_Top_tb,RST_Top_tb,EN_Top_tb;
reg [15:0]BUTTONS_Top_tb;
reg [15:0]Reg_in_Top_tb;
wire Unlock_Top_tb,Alarm_Top_tb,Admin_Lock_Top_tb;
wire [1:0]Count_Top_tb;

initial
begin
BUTTONS_Top_tb=16'b0000_0000_0000_0001; // to simulate as the buttons are in Pull Down State(So push 0000 at the beginning :)))
CLK_Top_tb=0;
RST_Top_tb=1;                     
#5

RST_Top_tb=0;
EN_Top_tb=1;
/***************************match********************/
Reg_in_Top_tb=16'b0011_0010_0001_0000;              /****Keys (1,2,3,4)***Binary***/

   

BUTTONS_Top_tb=16'b0000_0000_0000_0001;            /****Keys (1,2,3,4)***/
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0010;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0100;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_1000;
#40
/*************************** Don't Match three times ********************/
BUTTONS_Top_tb=16'b0000_0000_0000_0001;          
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0000;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0100;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_1000;
#40

/***********/
BUTTONS_Top_tb=16'b0000_0000_0000_0001;            
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0000;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0110;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_1111;
#40
/******/
BUTTONS_Top_tb=16'b0000_0000_0000_0001;            
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0000;
#20
BUTTONS_Top_tb=16'b0000_0000_0110_0110;
#20
BUTTONS_Top_tb=16'b0000_0000_1111_1111;
#40
/***********************************/


BUTTONS_Top_tb=16'b0000_0000_0000_0001;            /****Keys (1,2,3,4)***/
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0010;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_0100;
#20
BUTTONS_Top_tb=16'b0000_0000_0000_1000;
#40




EN_Top_tb=0;




end

always #10 CLK_Top_tb = ~CLK_Top_tb;
Top_Module_Proj DUT_Top(.CLK_Top(CLK_Top_tb),.RST_Top(RST_Top_tb),.EN_Top(EN_Top_tb)
                 ,.BUTTONS_Top(BUTTONS_Top_tb)
                 ,.Reg_in_Top(Reg_in_Top_tb),.Unlock_Top(Unlock_Top_tb),.Alarm_Top(Alarm_Top_tb)
				 ,.Admin_Lock_Top(Admin_Lock_Top_tb),.Count_Top(Count_Top_tb));
endmodule