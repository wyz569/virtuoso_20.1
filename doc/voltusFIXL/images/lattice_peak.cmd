setup_simulation  -spice_netlist /vols/ssvrd_t1_012/vrustagi/lattice/ARM_32x64.spice -topcell ARM_32x64 -output_directory /icd/epsrd_t1nb_001/vrustagi/ARM/VoltusFi_workshop/vps_simulation_batch_1 
spice_model -spice_lib /vols/ssvrd_t1_012/vrustagi/lattice/cln90g_lk.l -spice_corner { TT tt_hvt tt_lvt DIO TT_DIO} 
spice_model -spice_lib /vols/ssvrd_t1_012/vrustagi/lattice/cln90g_sr.l -spice_corner { TT_sr} 
spice_model -spice_lib /vols/ssvrd_t1_012/vrustagi/lattice/cln90g_sr_swl.l.special -spice_corner { TT_sr} 
power_pin -pin_name VDD  -voltage 0.9 
ground_pins VSS 
run_static_simulation  -method Ipeak  -nets { VDD VSS }
