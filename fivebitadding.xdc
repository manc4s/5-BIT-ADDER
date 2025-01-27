#constraints file for fivebitadding.v

# All properties for input a, a4-a0, switches R2, T1, U1, W2, R3 representing the input number a.
set_property PACKAGE_PIN R3 [get_ports {a0}]
set_property PACKAGE_PIN W2 [get_ports {a1}]
set_property PACKAGE_PIN U1 [get_ports {a2}]
set_property PACKAGE_PIN T1 [get_ports {a3}]
set_property PACKAGE_PIN R2 [get_ports {a4}]

# IOSTANDARD CMOSS 3.3V for Each one.
set_property IOSTANDARD LVCMOS33 [get_ports {a0}]
set_property IOSTANDARD LVCMOS33 [get_ports {a1}]
set_property IOSTANDARD LVCMOS33 [get_ports {a2}]
set_property IOSTANDARD LVCMOS33 [get_ports {a3}]
set_property IOSTANDARD LVCMOS33 [get_ports {a4}]



# All properties for input b, b4-b0, switches T2, T3, V2, W13, W14 representing the input number a.
set_property PACKAGE_PIN W14 [get_ports {b0}]
set_property PACKAGE_PIN W13 [get_ports {b1}]
set_property PACKAGE_PIN V2 [get_ports {b2}]
set_property PACKAGE_PIN T3 [get_ports {b3}]
set_property PACKAGE_PIN T2 [get_ports {b4}]

# IOSTANDARD CMOSS 3.3V for Each one.
set_property IOSTANDARD LVCMOS33 [get_ports {b0}]
set_property IOSTANDARD LVCMOS33 [get_ports {b1}]
set_property IOSTANDARD LVCMOS33 [get_ports {b2}]
set_property IOSTANDARD LVCMOS33 [get_ports {b3}]
set_property IOSTANDARD LVCMOS33 [get_ports {b4}]




#output LED's representing sum of a and b as s with bits s4-s0 represented by LED's on pins U15, W18, V19, U19, E19
#carry out represented by LED U16.
set_property PACKAGE_PIN E19 [get_ports {s0}]
set_property PACKAGE_PIN U19 [get_ports {s1}]
set_property PACKAGE_PIN V19 [get_ports {s2}]
set_property PACKAGE_PIN W18 [get_ports {s3}]
set_property PACKAGE_PIN U15 [get_ports {s4}]

set_property PACKAGE_PIN U16 [get_ports {cout}]

# IOSTANDARD CMOSS 3.3V for Each one.
set_property IOSTANDARD LVCMOS33 [get_ports {s0}]
set_property IOSTANDARD LVCMOS33 [get_ports {s1}]
set_property IOSTANDARD LVCMOS33 [get_ports {s2}]
set_property IOSTANDARD LVCMOS33 [get_ports {s3}]
set_property IOSTANDARD LVCMOS33 [get_ports {s4}]
set_property IOSTANDARD LVCMOS33 [get_ports {cout}]



#LED's representing a4-a0 on leda4-leda0
set_property PACKAGE_PIN U3 [get_ports {leda0}]
set_property PACKAGE_PIN P3 [get_ports {leda1}]
set_property PACKAGE_PIN N3 [get_ports {leda2}]
set_property PACKAGE_PIN P1 [get_ports {leda3}]
set_property PACKAGE_PIN L1 [get_ports {leda4}]
set_property IOSTANDARD LVCMOS33 [get_ports {leda0}]
set_property IOSTANDARD LVCMOS33 [get_ports {leda1}]
set_property IOSTANDARD LVCMOS33 [get_ports {leda2}]
set_property IOSTANDARD LVCMOS33 [get_ports {leda3}]
set_property IOSTANDARD LVCMOS33 [get_ports {leda4}]


#LED's representing b4-b0 on ledb4-ledb0
set_property PACKAGE_PIN U14 [get_ports {ledb0}]
set_property PACKAGE_PIN V14 [get_ports {ledb1}]
set_property PACKAGE_PIN V13 [get_ports {ledb2}]
set_property PACKAGE_PIN V3 [get_ports {ledb3}]
set_property PACKAGE_PIN W3 [get_ports {ledb4}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledb0}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledb1}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledb2}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledb3}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledb4}]
