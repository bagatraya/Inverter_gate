v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 20 -260 110 {lab=GND}
N -260 110 -150 110 {lab=GND}
N -150 110 -70 110 {lab=GND}
N 360 -60 390 -60 {lab=out}
N -260 -80 -260 -40 {lab=#net1}
N -260 -80 50 -80 {lab=#net1}
N 50 -80 50 -60 {lab=#net1}
N 50 -60 60 -60 {lab=#net1}
N -70 -40 -70 -10 {lab=in}
N -70 -40 -10 -40 {lab=in}
N -10 -40 60 -40 {lab=in}
N -70 50 -70 110 {lab=GND}
N -70 110 20 110 {lab=GND}
N 20 -20 20 110 {lab=GND}
N 20 -20 60 -20 {lab=GND}
C {devices/vsource.sym} -260 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -70 20 0 0 {name=V2 value="PULSE (0 1.8 2NS 2NS 2NS 50NS 100NS 5)" savecurrent=false}
C {devices/gnd.sym} -150 110 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 390 -60 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -10 -40 0 1 {name=p2 sig_type=std_logic lab=in}
C {sky130_fd_pr/corner.sym} 460 20 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code.sym} 450 -130 0 0 {name=inverter only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
tran 1ns 200ns 
plot in out
op
.endc
"}
C {inverter_gate.sym} 210 -40 0 0 {name=x1}
