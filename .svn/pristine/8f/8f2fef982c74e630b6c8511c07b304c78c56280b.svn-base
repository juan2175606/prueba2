v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 600 -170 600 -130 { lab=GND}
N 600 -270 600 -230 { lab=vss}
N 700 -270 700 -230 { lab=vdd}
N 700 -170 700 -130 { lab=vss}
N 800 -360 800 -330 { lab=vin_signal}
N 1270 -200 1270 -160 { lab=vss}
N 1270 -290 1270 -260 { lab=#net1}
N 800 -270 800 -230 { lab=vsen}
N 800 -170 800 -130 { lab=vcm}
N 990 -550 1050 -550 { lab=vin}
N 980 -550 980 -360 { lab=vin}
N 980 -550 990 -550 { lab=vin}
N 800 -360 860 -360 { lab=vin_signal}
N 1030 -360 1090 -360 { lab=vin}
N 1260 -550 1310 -550 { lab=vout}
N 1030 -250 1030 -210 { lab=vss}
N 1030 -360 1030 -310 { lab=vin}
N 1390 -340 1390 -310 { lab=vout}
N 1390 -250 1390 -200 { lab=vss}
N 1110 -290 1110 -250 { lab=vcm}
N 1110 -190 1110 -150 { lab=vss}
N 1110 -320 1110 -290 { lab=vcm}
N 1110 -320 1170 -320 { lab=vcm}
N 1090 -360 1170 -360 { lab=vin}
N 920 -360 1030 -360 { lab=vin}
N 1310 -550 1390 -550 { lab=vout}
N 1390 -550 1390 -340 { lab=vout}
N 1050 -550 1200 -550 { lab=vin}
N 1240 -290 1240 -270 { lab=vss}
N 1240 -430 1240 -410 { lab=vdd}
N 1170 -380 1170 -360 { lab=vin}
N 1330 -350 1390 -350 { lab=vout}
N 790 140 790 170 { lab=#net2}
N 1260 300 1260 340 { lab=vss}
N 1260 210 1260 240 { lab=#net3}
N 790 230 790 270 { lab=#net4}
N 790 330 790 370 { lab=vcm}
N 980 -50 1040 -50 { lab=#net5}
N 970 -50 970 140 { lab=#net5}
N 970 -50 980 -50 { lab=#net5}
N 790 140 850 140 { lab=#net2}
N 1020 140 1080 140 { lab=#net5}
N 1250 -50 1300 -50 { lab=vout2}
N 1020 250 1020 290 { lab=vss}
N 1020 140 1020 190 { lab=#net5}
N 1380 160 1380 190 { lab=vout2}
N 1380 250 1380 300 { lab=vss}
N 1100 210 1100 250 { lab=#net6}
N 1100 310 1100 350 { lab=vss}
N 1100 180 1100 210 { lab=#net6}
N 1100 180 1160 180 { lab=#net6}
N 1080 140 1160 140 { lab=#net5}
N 910 140 1020 140 { lab=#net5}
N 1300 -50 1380 -50 { lab=vout2}
N 1380 -50 1380 160 { lab=vout2}
N 1040 -50 1190 -50 { lab=#net5}
N 1230 210 1230 230 { lab=vss}
N 1230 70 1230 90 { lab=vdd}
N 1160 120 1160 140 { lab=#net5}
N 1320 150 1380 150 { lab=vout2}
C {vsource.sym} 600 -200 0 0 {name=V1 value=DC\{vss\}}
C {vsource.sym} 700 -200 0 0 {name=V2 value=DC\{vdd\}}
C {gnd.sym} 600 -130 0 0 {name=l14 lab=GND}
C {vsource.sym} 800 -200 0 0 {name=V4 value="sin(0 \{vac\} 1Meg) dc 0 ac 1"}
C {capa.sym} 800 -300 2 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 700 -270 1 0 {name=l15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 600 -270 1 0 {name=l16 sig_type=std_logic lab=vss}
C {lab_pin.sym} 700 -130 3 0 {name=l18 sig_type=std_logic lab=vss}
C {lab_pin.sym} 800 -130 3 0 {name=l20 sig_type=std_logic lab=vcm}
C {isource.sym} 1270 -230 0 0 {name=I0 value=DC\{iref\}}
C {lab_pin.sym} 1270 -160 3 0 {name=l22 sig_type=std_logic lab=vss}
C {lab_wire.sym} 800 -250 3 0 {name=l24 sig_type=std_logic lab=vsen}
C {res.sym} 890 -360 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {res.sym} 1230 -550 1 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1030 -210 3 0 {name=l28 sig_type=std_logic lab=vss
}
C {capa.sym} 1030 -280 0 0 {name=C5
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {netlist_not_shown.sym} 650 -530 0 0 {name=SIMULATION only_toplevel=false 

value="


* Circuit Parameters
.param vss = 0
.param vdd = 1.62
.param vac = 60m
.param vcm = vdd/2
.param iref = 95u

.options TEMP = 125

* Include Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib SS
.include ~/caravel_eamta_2021/track_analogico/opamp_manuel/sch/simulations/opamp_manuel_layout.spice

* OP Parameters & Signals to save
.save all
+ @M.X1.XM1.msky130_fd_pr__pfet_01v8_lvt[id] @M.X1.XM1.msky130_fd_pr__pfet_01v8_lvt[vth] @M.X1.XM1.msky130_fd_pr__pfet_01v8_lvt[vgs] @M.X1.XM1.msky130_fd_pr__pfet_01v8_lvt[vds] @M.X1.XM1.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.X1.XM1.msky130_fd_pr__pfet_01v8_lvt[gm] @M.X1.XM1.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @M.X1.XM2.msky130_fd_pr__pfet_01v8_lvt[id] @M.X1.XM2.msky130_fd_pr__pfet_01v8_lvt[vth] @M.X1.XM2.msky130_fd_pr__pfet_01v8_lvt[vgs] @M.X1.XM2.msky130_fd_pr__pfet_01v8_lvt[vds] @M.X1.XM2.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.X1.XM2.msky130_fd_pr__pfet_01v8_lvt[gm] @M.X1.XM2.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @M.X1.XM3.msky130_fd_pr__nfet_01v8[id] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vth] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vgs] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vds] @M.X1.XM3.msky130_fd_pr__nfet_01v8[vdsat] @M.X1.XM3.msky130_fd_pr__nfet_01v8[gm] @M.X1.XM3.msky130_fd_pr__nfet_01v8[gds]
+ @M.X1.XM4.msky130_fd_pr__nfet_01v8[id] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vth] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vgs] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vds] @M.X1.XM4.msky130_fd_pr__nfet_01v8[vdsat] @M.X1.XM4.msky130_fd_pr__nfet_01v8[gm] @M.X1.XM4.msky130_fd_pr__nfet_01v8[gds]
+ @M.X1.XM5.msky130_fd_pr__pfet_01v8[id] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM5.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM5.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM5.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM6.msky130_fd_pr__nfet_01v8[id] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vth] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vgs] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vds] @M.X1.XM6.msky130_fd_pr__nfet_01v8[vdsat] @M.X1.XM6.msky130_fd_pr__nfet_01v8[gm] @M.X1.XM6.msky130_fd_pr__nfet_01v8[gds]
+ @M.X1.XM7.msky130_fd_pr__pfet_01v8[id] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM7.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM7.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM7.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM8.msky130_fd_pr__pfet_01v8[id] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vth] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vgs] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vds] @M.X1.XM8.msky130_fd_pr__pfet_01v8[vdsat] @M.X1.XM8.msky130_fd_pr__pfet_01v8[gm] @M.X1.XM8.msky130_fd_pr__pfet_01v8[gds]
+ @M.X1.XM6.msky130_fd_pr__nfet_01v8[cgs]
+ @M.X1.XM9.msky130_fd_pr__nfet_01v8[gds]

*Simulation
.control

* analisis AC
	ac dec 100 1k 500G

	write opamp_closeloop.raw

 	meas ac GBW when vdb(vout)=0
	meas ac DCG find vdb(vout) at=2k
 	meas ac GBW2 when vdb(vout2)=0
	meas ac DCG2 find vdb(vout2) at=2k

	print DCG 	
	print GBW
	print DCG2 	
	print GBW2

	plot vdb(vout) vp(vout)*180/PI title 'Transferencia a lazo cerrado'
	plot vdb(vout2) vp(vout2)*180/PI title 'Transferencia a lazo cerrado (parasitos)'
	
* analisis de punto de operacion
	reset
	op
	save all
	
	print V(vout)
	write opamp_closeloop.raw
.endc

.end
"}
C {capa.sym} 1390 -280 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1390 -200 3 0 {name=l2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1370 -350 0 0 {name=l3 sig_type=std_logic lab=vout}
C {lab_pin.sym} 1110 -150 3 0 {name=l5 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1150 -320 0 0 {name=l4 sig_type=std_logic lab=vcm}
C {vsource.sym} 1110 -220 0 0 {name=V5 value=DC\{vcm\}}
C {lab_wire.sym} 1110 -360 0 0 {name=l6 sig_type=std_logic lab=vin}
C {lab_wire.sym} 840 -360 0 0 {name=l7 sig_type=std_logic lab=vin_signal}
C {lab_pin.sym} 1240 -430 1 0 {name=l1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1240 -270 3 0 {name=l8 sig_type=std_logic lab=vss}
C {opamp_manuel.sym} 1230 -350 0 0 {name=x1}
C {vsource.sym} 790 300 0 0 {name=V3 value="sin(0 \{vac\} 1Meg) dc 0 ac 1"}
C {capa.sym} 790 200 2 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 790 370 3 0 {name=l9 sig_type=std_logic lab=vcm}
C {isource.sym} 1260 270 0 0 {name=I1 value=DC\{iref\}}
C {lab_pin.sym} 1260 340 3 0 {name=l10 sig_type=std_logic lab=vss}
C {res.sym} 880 140 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {res.sym} 1220 -50 1 0 {name=R4
value=5k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1020 290 3 0 {name=l12 sig_type=std_logic lab=vss
}
C {capa.sym} 1020 220 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1380 220 0 0 {name=C6
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1380 300 3 0 {name=l13 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1360 150 0 0 {name=l17 sig_type=std_logic lab=vout2}
C {lab_pin.sym} 1100 350 3 0 {name=l19 sig_type=std_logic lab=vss}
C {vsource.sym} 1100 280 0 0 {name=V6 value=DC\{vcm\}}
C {lab_pin.sym} 1230 70 1 0 {name=l26 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1230 230 3 0 {name=l27 sig_type=std_logic lab=vss}
C {opamp_manuel_layout.sym} 1220 150 0 0 {name=x2}
