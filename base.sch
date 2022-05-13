v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {netlist_not_shown_at_end.sym} -80 -60 0 0 {name=SIMULATION value="

* Parameters
.param vdd = 1.8

.options TEMP = 65.0

* Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* Data to save
.save all
+ @M.XM1.msky130_fd_pr__nfet_01v8[id]

* Simulation
.control

.endc

.end
"}
