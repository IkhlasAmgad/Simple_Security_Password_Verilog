///////////// Moore FSM ///////////// 
module FSM_Proj(
input  wire        equal ,
input  wire        rst,
input  wire        clk,
output reg         unlock,
output reg         alarm
);



localparam  [2:0]    Reset=3'b110,
                     IDLE = 3'b000,
                     S1 = 3'b001,
                     S2 = 3'b011,
					 S3 = 3'b010,
					 ALARM=3'b111,
					 UNLOCK = 3'b100 ;
					 
reg    [2:0]         current_state,
                     next_state ;
		
// state transition 		
always @(posedge clk or posedge rst)
 begin
  if(rst)
   begin
     current_state <= Reset ;
   end
  else
   begin
     current_state <= next_state ;
   end
 end
 
// next_state logic
always @(*)
 begin
  case(current_state)
  Reset:    begin
             if(equal==0|equal==1)
               next_state = IDLE ;		  
             end
  IDLE     : begin
             if(equal==0|equal==1)
               next_state = S1 ;		  
             end
			 
  S1       : begin
            if(equal==0 |equal==1)
               next_state = S2 ;		  
             end	   
          
  S2     : begin
             if(equal==0|equal==1)
               next_state = S3 ;		  
             end	    
            
  S3    : begin
             if(equal)
			   next_state = UNLOCK ;
			  else 
               next_state = ALARM;
                 			   
              
            end
 		 
  UNLOCK  : begin
               next_state = IDLE ;
            end	
			
  ALARM : begin
               next_state = IDLE ;
            end			
			
  default :   next_state = IDLE ;		 
  
  endcase
end	


// next_state logic
always @(*)
 begin
  case(current_state)
  Reset:   begin
              unlock=1'b0 ;	
               alarm=1'b0;			  
             end
  IDLE     : begin
              unlock=1'b0 ;	
               alarm=1'b0;			  
             end
  S1       : begin
              unlock=1'b0 ;
			  alarm=1'b0;	
             end	
  S2     : begin
              unlock =1'b0 ;
              alarm=1'b0;				  
             end
  S3     : begin
              unlock =1'b0 ;
              alarm=1'b0;			  
             end
 		 
  UNLOCK   : begin  
              unlock = 1'b1 ;	
             end
  ALARM  : begin
              alarm = 1'b1 ;	
             end
			 
  default  : begin
               alarm = 1'b0 ;
              unlock = 1'b0 ;
             end			  
  endcase
 end	
		
		
endmodule					 
