module dmrl3_signals2(
			input clk,
			output reg upr_mod,
			output reg upr_gen,
			output reg sinhr
			); 
			
reg [14:0]timer;		
integer const1 = 50;

always @(posedge clk) begin    
	timer <= timer + 1'd1;
	case(timer)
	0:  upr_mod <= 1;
	1:	sinhr <= 1;
	13: upr_mod <= 0;
	18: upr_gen <= 1;
	26: upr_gen <= 0;
	51: sinhr <= 0;
	356 + const1: upr_mod <= 1;
	371 + const1: upr_gen <= 1;
	456 + const1: upr_mod <= 0;
	472 + const1: upr_gen <= 0;
	1801 + const1: upr_mod <= 1;
	1821 + const1: upr_gen <= 1;
	3006 + const1: upr_mod <= 0;
	3043 + const1: upr_gen <= 0;
	15000: timer <= 0;
	endcase
end
endmodule