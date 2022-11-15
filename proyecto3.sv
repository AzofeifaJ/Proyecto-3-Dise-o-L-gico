module proyecto3 (reloj, reinicio, operandoA, operandoB, sieteSegmentos0, sieteSegmentos1, sieteSegmentos2, sieteSegmentos3, sieteSegmentos4, sieteSegmentos5);
	input reloj;
	input reinicio;
	input[7:0] operandoA;
	input[7:0] operandoB;
	output[6:0] sieteSegmentos0;
	output[6:0] sieteSegmentos1;
	output[6:0] sieteSegmentos2;
	output[6:0] sieteSegmentos3;
	output[6:0] sieteSegmentos4;
	output[6:0] sieteSegmentos5;
	
	wire[15:0] resultado;
	wire[2:0] qlsb;
	
	multiplicador multiplicadorInstancia 
	(
		.clock(reloj),
		.reset(reinicio),
		.A(operandoA),
		.B(operandoB),
		.mult_control_t(1'b1),
		.mult_control(1'b1),
		.Q_LSB(qlsb),
		.Y(resultado)
	);
	
endmodule 