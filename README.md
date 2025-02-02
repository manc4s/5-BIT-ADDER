## 5-BIT-ADDER Project


Created in the VIVADO -version 2024.2 IDE
hardware Basys 3 - fpga board from digilent. 


Reference Manual:
  https://digilent.com/reference/_media/basys3:basys3_rm.pdf

Artix-7 fpga Datasheet. 
  https://docs.amd.com/v/u/en-US/ds180_7Series_Overview

Installing Vivado, Vitis, and Digilent Board files.
  https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-vitis

Vivado Design Suite User Guide.
  https://www.xilinx.com/support/documents/sw_manuals/xilinx2022_1/ug900-vivado-logic-simulation.pdf
  
File with every constraint possible from the Basys-3 board for future use:
https://github.com/Digilent/Basys3/blob/master/Projects/XADC_Demo/src/constraints/Basys3_Master.xdc


        

# Project is based on the 8bit_adder_circuit.png 
![image](https://github.com/user-attachments/assets/b4566987-e51c-4ce5-9194-1d1f4b7cc562)
created in circuit verse.
I only made the project a 5 bit adder because i wanted to be able to represent both inputs and outputs on the LED's on the bottom of the board and there are only 16.


This is my second project for this board besides some simple gate tests. I wanted to test if I could make this circuit with my limited knowledge of verilog and it came out nice. 




# The board schematics for inputs and outputs is the following.
![image](https://github.com/user-attachments/assets/303995f6-5561-471e-af51-ed8a0c3e691d)



# On the board the first 5 switches and leds represent value a, another 5 switches and leds are value b, the addition of the two are the next 5 leds and the carry is the final led.
As seen below. 
![image](https://github.com/user-attachments/assets/1121548a-5ca4-4f47-8b06-3c819789e1e4)



#Video Demonstration:
https://www.youtube.com/watch?v=ilU9YfEJ8gM



