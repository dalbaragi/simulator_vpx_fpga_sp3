////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.3
//  \   \         Application : xaw2verilog
//  /   /         Filename : DCM_IIC.v
// /___/   /\     Timestamp : 05/16/2016 20:22:33
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: xaw2verilog -st D:\lrh_workspace\projects\simulator_new\fpga_projects\VPX_BRD_SP3AN_CTRL\ipcore_dir\.\DCM_IIC.xaw D:\lrh_workspace\projects\simulator_new\fpga_projects\VPX_BRD_SP3AN_CTRL\ipcore_dir\.\DCM_IIC
//Design Name: DCM_IIC
//Device: xc3s400an-5fgg400
//
// Module DCM_IIC
// Generated by Xilinx Architecture Wizard
// Written for synthesis tool: XST
`timescale 1ns / 1ps

module DCM_IIC(U1_CLKIN_IN, 
               U1_RST_IN, 
               U1_CLKDV_OUT, 
               U1_CLKIN_IBUFG_OUT, 
               U1_CLK0_OUT, 
               U1_STATUS_OUT, 
               U2_CLKDV_OUT, 
               U2_CLK0_OUT, 
               U2_LOCKED_OUT, 
               U2_STATUS_OUT);

    input U1_CLKIN_IN;
    input U1_RST_IN;
   output U1_CLKDV_OUT;
   output U1_CLKIN_IBUFG_OUT;
   output U1_CLK0_OUT;
   output [7:0] U1_STATUS_OUT;
   output U2_CLKDV_OUT;
   output U2_CLK0_OUT;
   output U2_LOCKED_OUT;
   output [7:0] U2_STATUS_OUT;
   
   wire GND_BIT;
   wire U1_CLKDV_BUF;
   wire U1_CLKFB_IN;
   wire U1_CLKIN_IBUFG;
   wire U1_CLK0_BUF;
   wire U1_LOCKED_INV_IN;
   wire U2_CLKDV_BUF;
   wire U2_CLKFB_IN;
   wire U2_CLKIN_IN;
   wire U2_CLK0_BUF;
   wire U2_FDS_Q_OUT;
   wire U2_FD1_Q_OUT;
   wire U2_FD2_Q_OUT;
   wire U2_FD3_Q_OUT;
   wire U2_LOCKED_INV_RST;
   wire U2_OR3_O_OUT;
   wire U2_RST_IN;
   
   assign GND_BIT = 0;
   assign U1_CLKDV_OUT = U2_CLKIN_IN;
   assign U1_CLKIN_IBUFG_OUT = U1_CLKIN_IBUFG;
   assign U1_CLK0_OUT = U1_CLKFB_IN;
   assign U2_CLK0_OUT = U2_CLKFB_IN;
   DCM_SP #( .CLK_FEEDBACK("1X"), .CLKDV_DIVIDE(16.0), .CLKFX_DIVIDE(1), 
         .CLKFX_MULTIPLY(4), .CLKIN_DIVIDE_BY_2("FALSE"), 
         .CLKIN_PERIOD(10.000), .CLKOUT_PHASE_SHIFT("NONE"), 
         .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), .DFS_FREQUENCY_MODE("LOW"), 
         .DLL_FREQUENCY_MODE("LOW"), .DUTY_CYCLE_CORRECTION("TRUE"), 
         .FACTORY_JF(16'hC080), .PHASE_SHIFT(0), .STARTUP_WAIT("FALSE") ) 
         DCM_SP_INST1 (.CLKFB(U1_CLKFB_IN), 
                        .CLKIN(U1_CLKIN_IBUFG), 
                        .DSSEN(GND_BIT), 
                        .PSCLK(GND_BIT), 
                        .PSEN(GND_BIT), 
                        .PSINCDEC(GND_BIT), 
                        .RST(U1_RST_IN), 
                        .CLKDV(U1_CLKDV_BUF), 
                        .CLKFX(), 
                        .CLKFX180(), 
                        .CLK0(U1_CLK0_BUF), 
                        .CLK2X(), 
                        .CLK2X180(), 
                        .CLK90(), 
                        .CLK180(), 
                        .CLK270(), 
                        .LOCKED(U1_LOCKED_INV_IN), 
                        .PSDONE(), 
                        .STATUS(U1_STATUS_OUT[7:0]));
   DCM_SP #( .CLK_FEEDBACK("1X"), .CLKDV_DIVIDE(16.0), .CLKFX_DIVIDE(1), 
         .CLKFX_MULTIPLY(4), .CLKIN_DIVIDE_BY_2("FALSE"), 
         .CLKIN_PERIOD(160.000), .CLKOUT_PHASE_SHIFT("NONE"), 
         .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), .DFS_FREQUENCY_MODE("LOW"), 
         .DLL_FREQUENCY_MODE("LOW"), .DUTY_CYCLE_CORRECTION("TRUE"), 
         .FACTORY_JF(16'hC080), .PHASE_SHIFT(0), .STARTUP_WAIT("FALSE") ) 
         DCM_SP_INST2 (.CLKFB(U2_CLKFB_IN), 
                        .CLKIN(U2_CLKIN_IN), 
                        .DSSEN(GND_BIT), 
                        .PSCLK(GND_BIT), 
                        .PSEN(GND_BIT), 
                        .PSINCDEC(GND_BIT), 
                        .RST(U2_RST_IN), 
                        .CLKDV(U2_CLKDV_BUF), 
                        .CLKFX(), 
                        .CLKFX180(), 
                        .CLK0(U2_CLK0_BUF), 
                        .CLK2X(), 
                        .CLK2X180(), 
                        .CLK90(), 
                        .CLK180(), 
                        .CLK270(), 
                        .LOCKED(U2_LOCKED_OUT), 
                        .PSDONE(), 
                        .STATUS(U2_STATUS_OUT[7:0]));
   BUFG  U1_CLKDV_BUFG_INST (.I(U1_CLKDV_BUF), 
                            .O(U2_CLKIN_IN));
   IBUFG  U1_CLKIN_IBUFG_INST (.I(U1_CLKIN_IN), 
                              .O(U1_CLKIN_IBUFG));
   BUFG  U1_CLK0_BUFG_INST (.I(U1_CLK0_BUF), 
                           .O(U1_CLKFB_IN));
   INV  U1_INV_INST (.I(U1_LOCKED_INV_IN), 
                    .O(U2_LOCKED_INV_RST));
   BUFG  U2_CLKDV_BUFG_INST (.I(U2_CLKDV_BUF), 
                            .O(U2_CLKDV_OUT));
   BUFG  U2_CLK0_BUFG_INST (.I(U2_CLK0_BUF), 
                           .O(U2_CLKFB_IN));
   FDS  U2_FDS_INST (.C(U2_CLKIN_IN), 
                    .D(GND_BIT), 
                    .S(GND_BIT), 
                    .Q(U2_FDS_Q_OUT));
   FD  U2_FD1_INST (.C(U2_CLKIN_IN), 
                   .D(U2_FDS_Q_OUT), 
                   .Q(U2_FD1_Q_OUT));
   FD  U2_FD2_INST (.C(U2_CLKIN_IN), 
                   .D(U2_FD1_Q_OUT), 
                   .Q(U2_FD2_Q_OUT));
   FD  U2_FD3_INST (.C(U2_CLKIN_IN), 
                   .D(U2_FD2_Q_OUT), 
                   .Q(U2_FD3_Q_OUT));
   OR2  U2_OR2_INST (.I0(U2_LOCKED_INV_RST), 
                    .I1(U2_OR3_O_OUT), 
                    .O(U2_RST_IN));
   OR3  U2_OR3_INST (.I0(U2_FD3_Q_OUT), 
                    .I1(U2_FD2_Q_OUT), 
                    .I2(U2_FD1_Q_OUT), 
                    .O(U2_OR3_O_OUT));
endmodule
