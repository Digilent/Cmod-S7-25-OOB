This project is a a simple Verilog demo using the Cmod S7-25's LEDs, RGB LED, buttons, and USB-UART bridge. When programmed onto a board, the RGB LED will cycle from Blue to Green to Red to Black. The other LEDs will light up in sequence. Whenever one of the two buttons is pressed, "Button # Pressed!" is sent to a connected PC using the USB-UART bridge.

To receive messages from the demo, the Cmod S7 must be connected to a host PC using a micro USB cable. A serial terminal application, such as [TeraTerm](https://ttssh2.osdn.jp/index.html.en) should be used to view these messages. The UART connection is configured as 9600 baud, 2 stop bits, no parity.

WARNING!!! This project is only supported in the 2017.4 version of Vivado.

In order to program the project onto an FPGA:

1. 	Download the most recent release ZIP archive (not the source ZIP) from the repo's [releases page](https://github.com/Digilent/Cmod-S7-25-OOB/releases).

2. 	Extract and open the downloaded ZIP. Double click on "Cmod-S7-25-OOB.xpr". This will launch an archived version of the project, in which a bitstream has already been generated.

3. 	Open the Vivado Hardware Manager, select "Open Target", and find the target board.

4.  Program top.bit, found in the Cmod-S7-25-OOB.runs/impl_1/ subdirectory of the extracted archive, onto the target.

For more information on how this project is version controlled, see the [digilent-vivado-scripts repo](https://github.com/artvvb/digilent-vivado-scripts), which contains several Python and TCL scripts for maintaining a Vivado project on Github.
