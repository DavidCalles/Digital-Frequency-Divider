// DCalles_Lab4_OctalDecoder.v

/***********************************************************************
--	Description: Frequency divider using a dff-based counter and an 
--					 Octal decoder for selecting the desired output
--					 (8 different possible frequencies at a time)
--	
--	Inputs: 	clk, base clock signal
--				selector[2:0], output frequency selector, by default 
--					2^(29) to 2^(22) dividers power of two
--	
--	Outputs: Y[7:0], output divided clock, the output is selected by the
--					selector input
--**********************************************************************/
// Top-level Entity
module DCalles_Lab4_OctalDecoder (
		input           clk,
		input [2:0]     selector,
		output reg[7:0] Y );

    /*------------------------------------------------------------------------
    ------------------------- INTERMEDIATE SIGNALS ---------------------------
    ------------------------------------------------------------------------*/
    wire[7:0] prescaledSignal;

    /*------------------------------------------------------------------------
    ---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
    -------------------------------------------------------------------------*/

    Counter_32bit Counter_32bit1(
						clk, prescaledSignal); 

    /*------------------------------------------------------------------------
    -------------------------- ARCHITECTURE LOGIC ----------------------------
    ------------------------------------------------------------------------*/

    always@(selector)
    begin
        case(selector)
            3'b0000 : Y = (prescaledSignal & 8'b00000001); 
            3'b0001 : Y = (prescaledSignal & 8'b00000010);
            3'b0010 : Y = (prescaledSignal & 8'b00000100);
            3'b0011 : Y = (prescaledSignal & 8'b00001000);
            3'b0100 : Y = (prescaledSignal & 8'b00010000);
            3'b0101 : Y = (prescaledSignal & 8'b00100000);
            3'b0110 : Y = (prescaledSignal & 8'b01000000);
            3'b0111 : Y = (prescaledSignal & 8'b10000000);
            default : Y = (prescaledSignal & 8'b00000000);
        endcase
    end

endmodule 