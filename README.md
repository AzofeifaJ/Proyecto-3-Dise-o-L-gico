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
Este proyecto consiste en el desarrollo de un circuito del algoritmo de Booth por medio del diseño de una unidad de cálculo de multiplicación, mediante utilización de Verilog y el suit de herramintas de Vivado, así como la implementación de diseño digital en una FPGA en este caso una NEXYS 3 ddr para demostrar su funcionamiento, este proyecto consta de un subsistema de lectura de datos y un subsistema para el cálculo de multiplicación, además de un subsistema de conversión de binario a representación BCD y así como un ubsistema de despliegue en display de 7 segmentos.

## Descripción de cada subsistema
### Subsistema de lectura y decodificación de código Gray
En este primer subsistema el programa traduce la entrada de cuatro conmutadores en código gray a formato del código binario. La entrada del código es capturada y sincronizada con el sistema principal, para que posterior se realice un muestreo de estos con una duración de al menos cada 500 ms. Como se muestra en la imagen a continuación sobre la implementación y la correcta trasformación del Código Binario de 4 bits a partir de un Código de Gray necesario al llevar a cabo este circuito para mostrar un numero final decimal.

#### Imagen correspondiente al Código Gray de 4 bits




### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED
En este segundo subsistema se toma los datos ya pasados a código binario y los despliega en cuatro luces LED, además en esta sección se presenta el refrescamiento de las luces al menos cada 500 ms por parte sistema, en esta sección es importante mencionar que en cuanto al funcionamiento del LED la corriente siempre fluye de ánodo a cátodo, en el cual el ánodo se conecta al voltaje positivo de la fuente y el cátodo se conecta a tierra o al voltaje negativo de la fuente, representado en la siguiente imagen.

#### Imagen correspondiente al encendido de LEDs en NEXYS 4 ddr






### Subsistema de despliegue de código decodificado en display de 7 segmentos.
En este tercer subsistema tiene la tasa de refresco para la adecuada visualización, se toma los datos en código binario anteriormente ralizado y se procede a desplegar los dispositivos 7 segmentos disponibles, para realziar esta parte es importante mencionar la conexión de los pines a la FPGA de la NEXYS4 ddr la cual es necesaria para asignar el valor al encendido de los 7 segmentos numerados de A a G según corresponda para mostrar cada determinado valor, como se muestra en la imagen a continuación: 

#### Imagen de la distribución de los componentes en la NEXYS 4 ddr

#### Imagen de la distribución de pines del display de 7 segmentos





## Diagramas de bloques de cada subsistema
A continuación se muestra un diagrama de bloques sobre el funcionamiento general del circuito del algoritmo de Booth- Multiplicador con signo, así como un diagrama de bloques para cada subsistema de lectura, con su funcionalidad descrita y su esquema de interconexión, además con el registro de entradas y salidas, sus diagramas de estado y las señales de control de cada bloque en la ruta de datos.

#### Funcionamiento general




#### Subsistema de lectura y decodificación de código Gray.




#### Subsistema de lectura y decodificación de código Gray.




#### Subsistema de despliegue de código ingresado traducido a formato binario en luces LED.




#### Subsistema de despliegue de código decodificado en display de 7 segmentos.




## Simulación funcional del sistema completo

Realización de las pre-síntesis, mediante la simulaciones a nivel de RTL.
En esta sección se puede detallar las comprobaciones realizadas de los sistemas sobre la NEXYS 4 ddr, las cuales se realizaron por medio de videollamadas entre los integrantes del grupo para observar y realizar el correcto funcionamiento del circuito.

#### Sesiones realizadas entre los integrantes del grupo para la visualización y análisis del funcionamiento en Verilog para NEXYS 3




#### Utilización de Verilog para NEXYS 3




## Análisis de consumo de recursos en la FPGA (LUTs, FFs, etc.) y del consumo de potencia que reporta la herramienta Vivado.




## Reporte de velocidades máximas de reloj posibles en el diseño (mínima frecuencia de reloj para este diseño: 50 MHz).




## Problemas hallados durante el trabajo



