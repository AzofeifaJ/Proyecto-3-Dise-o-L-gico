# Proyecto III: Algoritmo de Booth- Multiplicador con signo.

![image](https://user-images.githubusercontent.com/111375712/195476581-b4a65f14-fa37-4b95-a1a7-ba00fbd7c58a.png)

### Instituto Tecnológico de Costa Rica
### EL 3307: Diseño Lógico
### Grupo 20
### Profesor: Ing. Kaleb Alfaro Badilla

### Integrantes
1. Azofeifa Jiménez Alonso
3. Luna Herrera José David

### II Semestre 2022


## Descripción general
Este proyecto consiste en el desarrollo de un circuito del algoritmo de Booth por medio del diseño de una unidad de cálculo de multiplicación, mediante utilización de Verilog y el suit de herramintas de Vivado, así como la implementación de diseño digital en una FPGA en este caso una NEXYS 4 ddr para demostrar su funcionamiento, este proyecto consta de un subsistema de lectura de datos y un subsistema para el cálculo de multiplicación, además de un subsistema de conversión de binario a representación BCD y así como un ubsistema de despliegue en display de 7 segmentos.

## Descripción de cada subsistema
### Subsistema de lectura de datos
En este primer subsistema adquiere los operando A y B de 8 bits cada uno para realizar la operación de multiplicación, los cuales se interpretarán con signo en complemento a 2. La entrada del código es capturada y sincronizada con el sistema principal por medio de un circuito antirebote de al menos 4 etapas (4 FF en cascada) por switch. El circuito esperara ante el accionar de un push button que es presionado y sostenido por 500ms. Al cumplirse este tiempo, el sistema da inicio a la operación aritmética de multiplicación, no se inicia otra operación hasta que el push button vuelve a su estado inicial en caso de haberse cumplido lo mencionado anteriormente.


### Subsistema para el cálculo de multiplicación
En este segundo subsistema recibe los operandos A y B del subsistema de lectura, la operación de multiplicación se inicia cuando el subsistema de lectura le indique a este subsistema que los operandos son válidos por medio de una bandera valid. El cálculo de multiplicación con signo se realiza de manera iterativa por medio del Algoritmo de Booth. Este bloque indica al siguiente bloque consecutivo cuando el resultado de la multiplicación está estable para ser muestreado con una señal done,  representado en la siguiente imagen.

#### Imagen correspondiente a





### Subsistema de conversión de binario a representación BCD
En este tercer subsistema registra el resultado del bloque anterior (16 bits con signo) y lo convierte en un formato BCD, además genera al menos 5 dígitos en BCD y uno de signo para el siguiente bloque, se indica al siguiente bloque por medio de una bandera de done cuando está lista la conversión para registrar, como se muestra en la imagen a continuación: 






### Subsistema de despliegue en display de 7 segmentos
En este tercer subsistema se toma el resultado de la multiplicación en BCD y los despliega en los dispositivos 7 segmentos disponibles en la placa, de forma decimal e incluyendo el signo, en donde se utiliza menos 6 dígitos disponibles del 7 segmentos. Por otro lado, el sistema tiene la tasa de refresco adecuada para una visualización cómoda por parte del usuario.

#### Imagen de la distribución de los componentes en la NEXYS 4 ddr
![image](https://user-images.githubusercontent.com/111375712/195011801-afe0480f-6058-425c-bd41-d2c9452f1d77.png)


#### Imagen de la distribución de pines del display de 7 segmentos
![image](https://user-images.githubusercontent.com/111375712/194989472-a5276744-b65a-47e5-b6a7-da2e06bcdfcc.png)


## Diagramas de bloques de cada subsistema
A continuación se muestra un diagrama de bloques sobre el funcionamiento general del circuito del algoritmo de Booth- Multiplicador con signo, así como un diagrama de bloques para cada subsistema de lectura, con su funcionalidad descrita y su esquema de interconexión, además con el registro de entradas y salidas, sus diagramas de estado y las señales de control de cada bloque en la ruta de datos.

#### Funcionamiento general




#### Subsistema de lectura de datos.




#### Subsistema de cálculo de multiplicación.




#### Subsistema de conversión de binario a representación BCD.




#### Subsistema de despliegue en display de 7 segmentos.




## Simulación funcional del sistema completo

Realización de las pre-síntesis, mediante la simulaciones a nivel de RTL.
En esta sección se puede detallar las comprobaciones realizadas de los sistemas sobre la NEXYS 4 ddr, las cuales se realizaron por medio de videollamadas entre los integrantes del grupo para observar y realizar el correcto funcionamiento del circuito.

#### Sesiones realizadas entre los integrantes del grupo para la visualización y análisis del funcionamiento en Verilog para NEXYS 4








## Análisis de consumo de recursos en la FPGA (LUTs, FFs, etc.) y del consumo de potencia que reporta la herramienta Vivado.




## Reporte de velocidades máximas de reloj posibles en el diseño (mínima frecuencia de reloj para este diseño: 50 MHz).




## Problemas hallados durante el trabajo
Durante el presente trabajo se generaron una serie de problemas desde su inicio, los cuales representaron un reto importante para el equipo de trabajo, estos problemas se detallan a continuación: el principal desafío que se presentó correspondió a que en un inicio la programación se realizó para una NEXYS 4 ddr, sin embargo la placa de FPGA que pudimos conseguir en el laboratorio correspondió a una NEXYS 3, por lo que para su testbench se debió realizar por medio de simulaciones en el mismo programa Vivado, por otra parte, otros problema que se produjeron fueron durante la codificación de dos subsistemas, lo cuales orrespondieron al subsistema de lectura, especificamente a la espera del circuito antes de accionar del push button que es presionado y sostenido por 500ms, así como también se presentaron algunos problemas en el subsistema de conversión de binario a representación BCD, los cuales requirieron una mayor inversión de tiempo y una recolección de información más detallada por parte de los estudiantes.
