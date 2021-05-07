# GPS-Synchronized-Clock
This is an FPGA based GPS Synchronized Clock. It utilizes an Intel 10M02SCE144 single supply FPGA with integrated configuration memory.

The clock is split into 2 pieces, the FPGA board and the clock display. This was done so that to FPGA board could be used for other projects easily without redesign. It also allowed me to use a 4-layer board for the FPGA and a 2-layer board for the clock display. This helped keep costs low while also getting the advantages of a 4-layer board for the FPGA. The boards were designed using KiCAD.

The code is written in Verilog and is split into multiple modules to allow for easy modification and reuse. The bitstream files for the FPGA were generated using the free version of Intel Quartus Prime. The entire project is included for your use.

The code is by no means perfect. I’m still learning Verilog and there are certainly optimizations that could be made, especially with the SDC timing file. If you have more experience with FPGAs feel free to improve the design.

See the final product on YouTube: https://www.youtube.com/watch?v=TpDHRGk3vro
