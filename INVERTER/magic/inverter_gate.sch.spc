** sch_path: /home/bagatraya/icpolytron/inverter/xschem/inverter_gate.sch
.subckt inverter_gate Vdd in out GND
*.PININFO in:I out:O Vdd:I GND:I
XM1 out in GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 out in Vdd Vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=1
.ends
.end
