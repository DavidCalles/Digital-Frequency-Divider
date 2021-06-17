# Digital Frequency Divider
VHDL and Verilog implementations for a clock frequency divider implemented at a component level.

## Characteristics
- A 32-bit counter is used to divide de frequency of a given clock. 
- A 3-bit input is used to select the frequency and output pin for the resulting signal.
- The counter is described at the Flip-Flop level. (no behavioural description for the counter)
- Tested on a DE1-SoC, Cyclone V board. 

## Default pins
-Switches 0, 1, and 2 for output selector.
-RLEDS 0-7 for prescaled clock output.
-50MHz clock signal.

## Main code
The code is presented in a Quartus II project-type format. 
Have in mind that the top level entity definition in both implementations is in the "DCalles_Lab4_OctalDecoder" .vhd or .v file.
