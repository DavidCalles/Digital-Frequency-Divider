// DFF_David.v

/***********************************************************************
--	Description: Data flip flop (1-bit)
--	
--	Inputs: 	clk, dff works on every rising edge of clock
--			 	rst, forces q=0, 
--				pre, forces q=1, 	
--				en, enables q=d,
--				d, data input		
--	
--	Outputs: q, data output
************************************************************************/


/*------------------------------------------------------------------------
------------------------ Module Declaration ------------------------------
------------------------------------------------------------------------*/

module DFF_David (
      input 		clock,
      input 		rst,
      input 		pre,
      input 		en,    
      input 		d,
      output reg 	q);

// Architecture definition
/*------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
------------------------------------------------------------------------*/

	always@(posedge clock)
	begin
		// Reset signal puts a 0 on Q
		if (rst == 1'b1) begin
			q = 1'b0;
		end
		
		// Preset signal puts a 1 on Q
		else if (pre == 1'b1) begin
			q = 1'b1;
		end
		
		// Enable signal makes the dff store last d value
		else if (en == 1'b1) begin
		
			if (d == 1'b1) begin
				q = 1'b1;
			end
			
			else if (d == 1'b0) begin 
				q = 1'b0;
			end
		end
   end
	
endmodule 