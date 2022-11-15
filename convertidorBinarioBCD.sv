module convertidorBinarioBCD (entradaDecimal, salidaBCD);
	input[3:0] entradaDecimal;
	output[3:0] salidaBCD;
	always @(entradaDecimal) begin
		case (entradaDecimal) 
			4'd0: salidaBCD = 4'b0000;
			4'd1: salidaBCD = 4'b0001;
			4'd2: salidaBCD = 4'b0010;
			4'd3: salidaBCD = 4'b0011;
			4'd4: salidaBCD = 4'b0100;
			4'd5: salidaBCD = 4'b0101;
			4'd6: salidaBCD = 4'b0110;
			4'd7: salidaBCD = 4'b0111;
			4'd8: salidaBCD = 4'b1000;
			4'd9: salidaBCD = 4'b1001;
			default: salidaBCD = 4'b0000;
		endcase
	end
endmodule 