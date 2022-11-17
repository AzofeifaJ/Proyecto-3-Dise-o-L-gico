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
En este segundo subsistema recibe los operandos A y B del subsistema de lectura, la operación de multiplicación se inicia cuando el subsistema de lectura le indique a este subsistema que los operandos son válidos por medio de una bandera valid. El cálculo de multiplicación con signo se realiza de manera iterativa por medio del Algoritmo de Booth. Este bloque indica al siguiente bloque consecutivo cuando el resultado de la multiplicación está estable para ser muestreado con una señal done.


#### Imagen sobre el funcionamiento del Algoritmo de Booth

![image](https://user-images.githubusercontent.com/111375712/202379401-2e4e9b56-aa33-4f63-ac59-e7c62af2c411.png)



### Subsistema de conversión de binario a representación BCD
En este tercer subsistema registra el resultado del bloque anterior (16 bits con signo) y lo convierte en un formato BCD, además genera al menos 5 dígitos en BCD y uno de signo para el siguiente bloque, se indica al siguiente bloque por medio de una bandera de done cuando está lista la conversión para registrar, como se muestra en la imagen a continuación: 


#### Imagen correspondiente a la conversión de binario a representación BCD

![image](https://user-images.githubusercontent.com/111375712/202380009-e3ef3c92-6162-47aa-97c7-b4809ada7585.png)


#### Imagen correspondiente ejemplo de la conversión de binario a representación BCD

![image](https://user-images.githubusercontent.com/111375712/202380646-9262e15c-2cbd-46d6-befb-1693b624540d.png)


### Subsistema de despliegue en display de 7 segmentos
En este tercer subsistema se toma el resultado de la multiplicación en BCD y los despliega en los dispositivos 7 segmentos disponibles en la placa, de forma decimal e incluyendo el signo, en donde se utiliza menos 6 dígitos disponibles del 7 segmentos. Por otro lado, el sistema tiene la tasa de refresco adecuada para una visualización cómoda por parte del usuario.


#### Imagen correspondiente al encendido de LEDs en NEXYS 4 ddr
![image](https://user-images.githubusercontent.com/111375712/194989319-14fcad98-e482-48d3-ba70-ff9cf3102c89.png)


#### Imagen de la distribución de los componentes en la NEXYS 4 ddr
![image](https://user-images.githubusercontent.com/111375712/195011801-afe0480f-6058-425c-bd41-d2c9452f1d77.png)


#### Imagen de la distribución de pines del display de 7 segmentos
![image](https://user-images.githubusercontent.com/111375712/194989472-a5276744-b65a-47e5-b6a7-da2e06bcdfcc.png)


## Diagramas de bloques de cada subsistema
A continuación se muestra un diagrama de bloques sobre el funcionamiento general del circuito del algoritmo de Booth- Multiplicador con signo, así como un diagrama de bloques para cada subsistema de lectura, con su funcionalidad descrita y su esquema de interconexión, además con el registro de entradas y salidas, sus diagramas de estado y las señales de control de cada bloque en la ruta de datos.

#### Funcionamiento general

![image](https://user-images.githubusercontent.com/111375712/201807205-852544b4-3432-4ee7-b84e-094e8adf1e96.png)



#### Subsistema de lectura de datos.

![Image](https://user-images.githubusercontent.com/88691484/201805761-3cc7c50f-a9f1-42db-ba6c-b9cdd7140ea5.png)



#### Subsistema de cálculo de multiplicación.

![Image](https://user-images.githubusercontent.com/88691484/201805794-3afae4aa-fc35-46c4-aecd-fde5521a53cb.png)



#### Subsistema de conversión de binario a representación BCD.

![Image](https://user-images.githubusercontent.com/88691484/202385115-faa86cc1-c3eb-4e19-aee5-ff5415890e22.png)


#### Subsistema de despliegue en display de 7 segmentos.

![image](https://user-images.githubusercontent.com/111375712/202383324-ee7b30ae-a087-43fc-9832-8e684334e8c5.png)



## Simulación funcional del sistema completo

Realización de las pre-síntesis, mediante la simulaciones a nivel de RTL.
En esta sección se puede detallar las comprobaciones realizadas de los sistemas sobre la NEXYS 4 ddr, las cuales se realizaron por medio de videollamadas entre los integrantes del grupo para observar y realizar el correcto funcionamiento del circuito.

#### Sesiones realizadas entre los integrantes del grupo durante la programación de Verilog para NEXYS 4

![image](https://user-images.githubusercontent.com/111375712/202376810-bee83eed-948d-4374-af41-032ca75dd4ae.png)

![image](https://user-images.githubusercontent.com/111375712/202377945-8ea9d17e-90cb-4a5c-aa92-ac24fbbbb692.png)


## Análisis de consumo de recursos en la FPGA (LUTs, FFs, etc.) y del consumo de potencia que reporta la herramienta Vivado.




## Reporte de velocidades máximas de reloj posibles en el diseño (mínima frecuencia de reloj para este diseño: 50 MHz).




## Problemas hallados durante el trabajo
Durante el presente trabajo se generaron una serie de problemas desde su inicio, los cuales representaron un reto importante para el equipo de trabajo, estos problemas se detallan a continuación: el principal desafío que se presentó correspondió a que en un inicio la programación se realizó para una NEXYS 4 ddr, sin embargo la placa de FPGA que pudimos conseguir en el laboratorio correspondió a una NEXYS 3 y no se pudo realizar los testbench, por otra parte, otros problema que se produjeron fueron durante la codificación de los subsistemas, en cuanto al subsistema de conversión de binario a representación BCD así como también se presentaron problemas en el subsistema de display de 7 segmentos al iniciar el cual fue programado para NEXYS 3, los cuales requirieron una mayor inversión de tiempo y una recolección de información más detallada por parte de los estudiantes.
