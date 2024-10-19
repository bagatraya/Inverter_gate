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
N -70 20 -70 110 {lab=GND}
N -260 -110 -260 -40 {lab=#net1}
N -70 -150 110 -150 {lab=#net1}
N 110 -150 110 -120 {lab=#net1}
N -260 -150 -70 -150 {lab=#net1}
N -260 -150 -260 -110 {lab=#net1}
N -70 -80 -70 -40 {lab=in}
N -70 -90 70 -90 {lab=in}
N -70 -90 -70 -80 {lab=in}
N 110 -60 110 10 {lab=out}
N 110 70 110 110 {lab=GND}
N -70 110 110 110 {lab=GND}
N 110 40 170 40 {lab=GND}
N 170 40 170 110 {lab=GND}
N 110 110 170 110 {lab=GND}
N 110 -20 200 -20 {lab=out}
N 20 -90 20 40 {lab=in}
N 20 40 70 40 {lab=in}
N 110 -90 160 -90 {lab=#net1}
N 160 -150 160 -90 {lab=#net1}
N 110 -150 160 -150 {lab=#net1}
C {devices/vsource.sym} -260 -10 0 0 {name=V1 value=5 savecurrent=false}
C {devices/vsource.sym} -70 -10 0 0 {name=V2 value=0 savecurrent=false}
C {sky130_fd_pr/pfet_01v8.sym} 90 -90 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -150 110 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 90 40 0 0 {name=M4
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 200 -20 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -70 -70 0 1 {name=p2 sig_type=std_logic lab=in}
C {sky130_fd_pr/corner.sym} 290 10 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code.sym} 290 -130 0 0 {name=inverter only_toplevel=false value="
.control
dc V2 0 5 0.1
plot out in
.endc
"}
