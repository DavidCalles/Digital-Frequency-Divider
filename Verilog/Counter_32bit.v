// Counter_32bit.v

/************************************************************************
--	Description: 32 bit timer/counter using D 
--					flip flops.
--	
--	Inputs: clk, base clock signal
--	
--	Outputs: prescaled[7:0] any 8 bits value from timer
--**********************************************************************/

/*------------------------------------------------------------------------
------------------------ Module Declaration ------------------------------
-------------------------------------------------------------------------*/

module Counter_32bit (
			input 			clkC,     
         output [7:0] 	prescaled );


/*------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
------------------------------------------------------------------------*/
	// Flip flop signals
	wire enable  = 1'b1;
	wire reset	 = 1'b0;
	wire preset	 = 1'b0;
	
	wire [31:0] dSign;
	wire [31:0] qSign;

/*------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
------------------------------------------------------------------------*/
	
	assign dSign = ~qSign;
	
	// Connections mapping for d flip flops
	DFF_David DFF0 	(clkC, 		reset, preset, enable, dSign[0], qSign[0]);
	DFF_David DFF1 	(dSign[0], reset, preset, enable, dSign[1], qSign[1]);
	DFF_David DFF2		(dSign[1], reset, preset, enable, dSign[2], qSign[2]);
	DFF_David DFF3 	(dSign[2], reset, preset, enable, dSign[3], qSign[3]);
	DFF_David DFF4 	(dSign[3], reset, preset, enable, dSign[4], qSign[4]);
	DFF_David DFF5 	(dSign[4], reset, preset, enable, dSign[5], qSign[5]);
	DFF_David DFF6 	(dSign[5], reset, preset, enable, dSign[6], qSign[6]);
	DFF_David DFF7 	(dSign[6], reset, preset, enable, dSign[7], qSign[7]);

	DFF_David DFF8 	(dSign[7], reset, preset, enable, dSign[8], qSign[8]);
	DFF_David DFF9 	(dSign[8], reset, preset, enable, dSign[9], qSign[9]);
	DFF_David DFF10 	(dSign[9], reset, preset, enable, dSign[10], qSign[10]);
	DFF_David DFF11	(dSign[10], reset, preset, enable, dSign[11], qSign[11]);
	DFF_David DFF12	(dSign[11], reset, preset, enable, dSign[12], qSign[12]);
	DFF_David DFF13	(dSign[12], reset, preset, enable, dSign[13], qSign[13]);
	DFF_David DFF14	(dSign[13], reset, preset, enable, dSign[14], qSign[14]);
	DFF_David DFF15	(dSign[14], reset, preset, enable, dSign[15], qSign[15]);
	DFF_David DFF16	(dSign[15], reset, preset, enable, dSign[16], qSign[16]);
	DFF_David DFF17	(dSign[16], reset, preset, enable, dSign[17], qSign[17]);
	DFF_David DFF18	(dSign[17], reset, preset, enable, dSign[18], qSign[18]);
	DFF_David DFF19	(dSign[18], reset, preset, enable, dSign[19], qSign[19]);
	DFF_David DFF20	(dSign[19], reset, preset, enable, dSign[20], qSign[20]);
	DFF_David DFF21	(dSign[20], reset, preset, enable, dSign[21], qSign[21]);
	DFF_David DFF22	(dSign[21], reset, preset, enable, dSign[22], qSign[22]);
	DFF_David DFF23	(dSign[22], reset, preset, enable, dSign[23], qSign[23]);
	DFF_David DFF24	(dSign[23], reset, preset, enable, dSign[24], qSign[24]);
	DFF_David DFF25	(dSign[24], reset, preset, enable, dSign[25], qSign[25]);
	DFF_David DFF26	(dSign[25], reset, preset, enable, dSign[26], qSign[26]);
	DFF_David DFF27	(dSign[26], reset, preset, enable, dSign[27], qSign[27]);

	DFF_David DFF28 	(dSign[27], reset, preset, enable, dSign[28], qSign[28]);
	DFF_David DFF29	(dSign[28], reset, preset, enable, dSign[29], qSign[29]);
	DFF_David DFF30	(dSign[29], reset, preset, enable, dSign[30], qSign[30]);
	DFF_David DFF31	(dSign[30], reset, preset, enable, dSign[31], qSign[31]);


	// Output any 8 bits
	assign prescaled = qSign[29:22];

endmodule 