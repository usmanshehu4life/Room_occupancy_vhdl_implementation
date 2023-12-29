set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }];
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 }   [ get_ports { reset  }  ] ;
set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 }   [ get_ports { entrance_sensor }  ] ;
set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 }   [ get_ports { exit_sensor  }  ] ;
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[0] }    ] ;
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[1] }    ] ;
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[2] }    ] ;
set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[3] }    ] ;
set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[4] }    ] ;
set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[5] }    ] ;
set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 }   [ get_ports { red_indicator }    ] ;

