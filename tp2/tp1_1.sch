v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 120 260 250 { lab=GND}
N 140 180 140 210 { lab=GND}
N 140 210 260 210 { lab=GND}
N 420 180 420 200 { lab=GND}
N 260 200 390 200 { lab=GND}
N 260 90 340 90 { lab=GND}
N 350 90 350 140 { lab=GND}
N 140 90 140 120 { lab=#net1}
N 140 90 220 90 { lab=#net1}
N 260 10 260 60 { lab=VOUT}
N 350 140 350 200 {
lab=GND}
N 340 90 350 90 {
lab=GND}
N 420 10 420 70 {
lab=#net2}
N 420 130 420 180 {
lab=GND}
N 390 200 420 200 {
lab=GND}
N 260 -120 420 -120 {
lab=#net2}
N 420 -120 420 10 {
lab=#net2}
N 260 -110 260 -70 {
lab=#net2}
N 260 -120 260 -110 {
lab=#net2}
N 260 0 260 10 {
lab=VOUT}
N 260 -70 260 -60 {
lab=#net2}
N 190 -30 220 -30 {
lab=#net1}
N 190 -30 190 90 {
lab=#net1}
N 260 -30 420 -30 {
lab=#net2}
N 260 40 370 40 {
lab=VOUT}
C {sky130_fd_pr/nfet_01v8.sym} 240 90 0 0 {name=M1
L=0.15
W=\{w\}
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
C {gnd.sym} 260 250 0 0 {name=l1 lab=GND}
C {vsource.sym} 140 150 0 0 {name=VGS value=DC\{vgs\}}
C {vsource.sym} 420 100 0 0 {name=VDD value=DC\{vdd\}}
C {netlist_not_shown.sym} -100 0 0 0 {name=simulation only_toplevel=false 
value="

* Parameters
.param vdd = 1.8
.param vgs = 0.9
.param w=0.45
.options TEMP = -20



* Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* Data to save
.save all
+ @M.XM1.msky130_fd_pr__nfet_01v8[id]
+ @M.XM1.msky130_fd_pr__nfet_01v8[value]
+ @M.XM1.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM2.msky130_fd_pr__pfet_01v8[id]
+ @M.XM2.msky130_fd_pr__pfet_01v8[gm]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vth]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vsd]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vdsat]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vsg]

* Simulation
.control

  let i = 0.75
  let n = 1.0

  while i <= n
   alter w = i
   reset
   dc VGS 0 2.3 0.01dc VGS 0.0 2.3 0.01 
   let i=i+0.1
  end

  alterparam w = 0.45
  reset
  dc VGS 0 2.3 0.01   

  alterparam w = 0.65
  reset
  dc VGS 0.0 2.3 0.01
  wrdata ~/icdesign/sch/tp2/dc1.txt v(VOUT)
  
  alterparam w = 0.75
  reset
  dc VGS 0.0 2.3 0.01  
  wrdata ~/icdesign/sch/tp2/dc2.txt v(VOUT)
  

.endc

.end
"}
C {launcher.sym} -40 150 0 0 {name=h1
descr=Anotar 
 tclcommand="ngspice::annotate"}
C {ngspice_get_value.sym} 280 60 0 0 {name=r6 node=v(@M.XM1.msky130_fd_pr__nfet_01v8[vth])
descr="Vth="}
C {sky130_fd_pr/pfet_01v8.sym} 240 -30 0 0 {name=M2
L=0.15
W=\{w\}
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
C {lab_wire.sym} 370 40 0 0 {name=VOUT sig_type=std_logic lab=VOUT}
