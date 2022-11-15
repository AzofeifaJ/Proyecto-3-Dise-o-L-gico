module displaySieteSegmentos (numeroBCD, sieteSegmentos0, sieteSegmentos1, sieteSegmentos2, sieteSegmentos3, sieteSegmentos4);
	input[19:0] numeroBCD;
	output[6:0] sieteSegmentos0;
	output[6:0] sieteSegmentos1;
	output[6:0] sieteSegmentos2;
	output[6:0] sieteSegmentos3;
	output[6:0] sieteSegmentos4;
	always @(numeroBCD) begin
		case(numeroBCD[3:0]) 
			4'b0000: sieteSegmentos0 = 7'b1111111;
			4'b0001: sieteSegmentos0 = 7'b1001111;
			4'b0010: sieteSegmentos0 = 7'b0010010;
			4'b0011: sieteSegmentos0 = 7'b0000110;
			4'b0100: sieteSegmentos0 = 7'b1001100;
			4'b0101: sieteSegmentos0 = 7'b0100100;
			4'b0110: sieteSegmentos0 = 7'b0100000;
			4'b0111: sieteSegmentos0 = 7'b0001111;
			4'b1000: sieteSegmentos0 = 7'b0000000;
			4'b1001: sieteSegmentos0 = 7'b0001100;
			default: sieteSegmentos0 = 7'b1111111;
		endcase
		case(numeroBCD[7:4]) 
			4'b0000: sieteSegmentos1 = 7'b1111111;
			4'b0001: sieteSegmentos1 = 7'b1001111;
			4'b0010: sieteSegmentos1 = 7'b0010010;
			4'b0011: sieteSegmentos1 = 7'b0000110;
			4'b0100: sieteSegmentos1 = 7'b1001100;
			4'b0101: sieteSegmentos1 = 7'b0100100;
			4'b0110: sieteSegmentos1 = 7'b0100000;
			4'b0111: sieteSegmentos1 = 7'b0001111;
			4'b1000: sieteSegmentos1 = 7'b0000000;
			4'b1001: sieteSegmentos1 = 7'b0001100;
			default: sieteSegmentos1 = 7'b1111111;
		endcase
		case(numeroBCD[11:8]) 
			4'b0000: sieteSegmentos2 = 7'b1111111;
			4'b0001: sieteSegmentos2 = 7'b1001111;
			4'b0010: sieteSegmentos2 = 7'b0010010;
			4'b0011: sieteSegmentos2 = 7'b0000110;
			4'b0100: sieteSegmentos2 = 7'b1001100;
			4'b0101: sieteSegmentos2 = 7'b0100100;
			4'b0110: sieteSegmentos2 = 7'b0100000;
			4'b0111: sieteSegmentos2 = 7'b0001111;
			4'b1000: sieteSegmentos2 = 7'b0000000;
			4'b1001: sieteSegmentos2 = 7'b0001100;
			default: sieteSegmentos2 = 7'b1111111;
		endcase
		case(numeroBCD[15:12]) 
			4'b0000: sieteSegmentos3 = 7'b1111111;
			4'b0001: sieteSegmentos3 = 7'b1001111;
			4'b0010: sieteSegmentos3 = 7'b0010010;
			4'b0011: sieteSegmentos3 = 7'b0000110;
			4'b0100: sieteSegmentos3 = 7'b1001100;
			4'b0101: sieteSegmentos3 = 7'b0100100;
			4'b0110: sieteSegmentos3 = 7'b0100000;
			4'b0111: sieteSegmentos3 = 7'b0001111;
			4'b1000: sieteSegmentos3 = 7'b0000000;
			4'b1001: sieteSegmentos3 = 7'b0001100;
			default: sieteSegmentos3 = 7'b1111111;
		endcase
		case(numeroBCD[19:16]) 
			4'b0000: sieteSegmentos4 = 7'b1111111;
			4'b0001: sieteSegmentos4 = 7'b1001111;
			4'b0010: sieteSegmentos4 = 7'b0010010;
			4'b0011: sieteSegmentos4 = 7'b0000110;
			4'b0100: sieteSegmentos4 = 7'b1001100;
			4'b0101: sieteSegmentos4 = 7'b0100100;
			4'b0110: sieteSegmentos4 = 7'b0100000;
			4'b0111: sieteSegmentos4 = 7'b0001111;
			4'b1000: sieteSegmentos4 = 7'b0000000;
			4'b1001: sieteSegmentos4 = 7'b0001100;
			default: sieteSegmentos4 = 7'b1111111;
		endcase
	end
endmodule 