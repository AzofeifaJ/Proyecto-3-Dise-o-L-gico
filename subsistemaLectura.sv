module subsistemaLectura (reloj, reinicio, operandoA, operandoB, realizarMultiplicacion, ledOperandoA, ledOperandoB);
	input reloj;
	input reinicio;
	input [3:0] operandoA;
	input [3:0] operandoB;
	input realizarMultiplicacion;
	output ledOperandoA;
	output ledOperandoB;

	always @(posedge reloj) begin
		if (reinicio) begin
			operandoA = 4'b0000;
			operandoB = 4'b0000;
			ledOperandoA = 1'b0;
		end
	end

endmodule 