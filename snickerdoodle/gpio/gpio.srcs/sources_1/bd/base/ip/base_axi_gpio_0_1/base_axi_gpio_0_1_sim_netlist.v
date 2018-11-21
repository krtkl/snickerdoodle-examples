// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
// Date        : Tue Nov 20 13:01:33 2018
// Host        : WIN-MJ2I8SI0RJV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top base_axi_gpio_0_1 -prefix
//               base_axi_gpio_0_1_ base_axi_gpio_0_0_sim_netlist.v
// Design      : base_axi_gpio_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module base_axi_gpio_0_1_GPIO_Core
   (reg1,
    reg3,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    GPIO_intr,
    GPIO2_intr,
    reg2,
    reg4,
    \ip2bus_data_i_D1_reg[7] ,
    gpio2_io_o,
    gpio2_io_t,
    gpio_io_o,
    gpio_io_t,
    bus2ip_rnw_i_reg,
    s_axi_aclk,
    bus2ip_reset,
    p_20_in,
    Bus_RNW_reg,
    p_19_in,
    p_18_in,
    p_17_in,
    Q,
    gpio_reg_en,
    p_0_in106_in,
    p_0_in108_in,
    bus2ip_cs,
    gpio_io_i,
    gpio2_io_i,
    E,
    s_axi_wdata,
    bus2ip_rnw_i_reg_0,
    bus2ip_rnw_i_reg_1,
    bus2ip_rnw_i_reg_2);
  output [24:0]reg1;
  output [24:0]reg3;
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output GPIO_intr;
  output GPIO2_intr;
  output [24:0]reg2;
  output [24:0]reg4;
  output \ip2bus_data_i_D1_reg[7] ;
  output [24:0]gpio2_io_o;
  output [24:0]gpio2_io_t;
  output [24:0]gpio_io_o;
  output [24:0]gpio_io_t;
  input bus2ip_rnw_i_reg;
  input s_axi_aclk;
  input bus2ip_reset;
  input p_20_in;
  input Bus_RNW_reg;
  input p_19_in;
  input p_18_in;
  input p_17_in;
  input [1:0]Q;
  input gpio_reg_en;
  input p_0_in106_in;
  input p_0_in108_in;
  input [0:0]bus2ip_cs;
  input [24:0]gpio_io_i;
  input [24:0]gpio2_io_i;
  input [0:0]E;
  input [24:0]s_axi_wdata;
  input [0:0]bus2ip_rnw_i_reg_0;
  input [0:0]bus2ip_rnw_i_reg_1;
  input [0:0]bus2ip_rnw_i_reg_2;

  wire Bus_RNW_reg;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[7]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[7]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[17]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[17]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[18]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[18]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[19]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[19]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[20]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[20]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[21]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[21]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[22]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[22]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[23]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[23]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[24]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[24]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[25]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[25]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[26]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[26]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[8]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[8]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[27]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[27]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[28]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[28]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[29]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[29]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[31]_i_2_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[31]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[9]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[9]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[10]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[10]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[11]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[11]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[12]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[12]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[13]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[13]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[14]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[14]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[15]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[15]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[16]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[16]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[7]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[7]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[17]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[17]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[18]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[18]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[19]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[19]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[20]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[20]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[21]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[21]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[22]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[22]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[23]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[23]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[24]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[24]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[25]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[25]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[26]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[26]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[8]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[8]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[27]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[27]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[28]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[28]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[29]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[29]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[31]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[31]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[9]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[9]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[10]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[10]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[11]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[11]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[12]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[12]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[13]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[13]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[14]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[14]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[15]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[15]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[16]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[16]_i_1_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0 ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[10] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[11] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[12] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[13] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[14] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[15] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[16] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[17] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[18] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[19] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[20] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[21] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[22] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[23] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[24] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[2] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[3] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[4] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[5] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[6] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[7] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[8] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[9] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[24] ;
  wire [0:0]E;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire [1:0]Q;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw_i_reg;
  wire [0:0]bus2ip_rnw_i_reg_0;
  wire [0:0]bus2ip_rnw_i_reg_1;
  wire [0:0]bus2ip_rnw_i_reg_2;
  wire [0:24]gpio2_Data_In;
  wire [0:24]gpio2_data_in_xor;
  wire [24:0]gpio2_io_i;
  wire [0:24]gpio2_io_i_d2;
  wire [24:0]gpio2_io_o;
  wire [24:0]gpio2_io_t;
  wire [0:24]gpio_Data_In;
  wire [0:24]gpio_data_in_xor;
  wire [24:0]gpio_io_i;
  wire [0:24]gpio_io_i_d2;
  wire [24:0]gpio_io_o;
  wire [24:0]gpio_io_t;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire \ip2bus_data_i_D1_reg[7] ;
  wire or_ints;
  wire or_ints2;
  wire \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0 ;
  wire \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0 ;
  wire \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4_n_0 ;
  wire \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5_n_0 ;
  wire p_0_in;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire p_0_in2_in;
  wire p_10_in12_in;
  wire p_11_in13_in;
  wire p_12_in14_in;
  wire p_13_in15_in;
  wire p_14_in16_in;
  wire p_15_in17_in;
  wire p_16_in18_in;
  wire p_17_in;
  wire p_17_in19_in;
  wire p_18_in;
  wire p_18_in20_in;
  wire p_19_in;
  wire p_19_in21_in;
  wire p_1_in3_in;
  wire p_20_in;
  wire p_20_in22_in;
  wire p_21_in23_in;
  wire p_22_in24_in;
  wire p_2_in4_in;
  wire p_3_in5_in;
  wire p_4_in6_in;
  wire p_5_in7_in;
  wire p_6_in8_in;
  wire p_7_in9_in;
  wire p_8_in10_in;
  wire p_9_in11_in;
  wire [24:0]reg1;
  wire [24:0]reg2;
  wire [24:0]reg3;
  wire [24:0]reg4;
  wire s_axi_aclk;
  wire [24:0]s_axi_wdata;

  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[7]_i_1 
       (.I0(gpio_io_o[24]),
        .I1(gpio_io_t[24]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[0]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[7]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[7]_i_1_n_0 ),
        .Q(reg1[24]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[7]_i_1 
       (.I0(reg2[24]),
        .I1(gpio_io_t[24]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[0]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[7]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[7]_i_1_n_0 ),
        .Q(reg2[24]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[17]_i_1 
       (.I0(gpio_io_o[14]),
        .I1(gpio_io_t[14]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[10]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[17]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[17]_i_1_n_0 ),
        .Q(reg1[14]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[17]_i_1 
       (.I0(reg2[14]),
        .I1(gpio_io_t[14]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[10]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[17]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[17]_i_1_n_0 ),
        .Q(reg2[14]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[18]_i_1 
       (.I0(gpio_io_o[13]),
        .I1(gpio_io_t[13]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[11]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[18]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[18]_i_1_n_0 ),
        .Q(reg1[13]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[18]_i_1 
       (.I0(reg2[13]),
        .I1(gpio_io_t[13]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[11]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[18]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[18]_i_1_n_0 ),
        .Q(reg2[13]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[19]_i_1 
       (.I0(gpio_io_o[12]),
        .I1(gpio_io_t[12]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[12]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[19]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[19]_i_1_n_0 ),
        .Q(reg1[12]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[19]_i_1 
       (.I0(reg2[12]),
        .I1(gpio_io_t[12]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[12]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[19]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[19]_i_1_n_0 ),
        .Q(reg2[12]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[20]_i_1 
       (.I0(gpio_io_o[11]),
        .I1(gpio_io_t[11]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[13]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[20]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[20]_i_1_n_0 ),
        .Q(reg1[11]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[20]_i_1 
       (.I0(reg2[11]),
        .I1(gpio_io_t[11]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[13]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[20]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[20]_i_1_n_0 ),
        .Q(reg2[11]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[21]_i_1 
       (.I0(gpio_io_o[10]),
        .I1(gpio_io_t[10]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[14]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[21]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[21]_i_1_n_0 ),
        .Q(reg1[10]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[21]_i_1 
       (.I0(reg2[10]),
        .I1(gpio_io_t[10]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[14]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[21]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[21]_i_1_n_0 ),
        .Q(reg2[10]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[22]_i_1 
       (.I0(gpio_io_o[9]),
        .I1(gpio_io_t[9]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[15]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[22]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[22]_i_1_n_0 ),
        .Q(reg1[9]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[22]_i_1 
       (.I0(reg2[9]),
        .I1(gpio_io_t[9]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[15]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[22]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[22]_i_1_n_0 ),
        .Q(reg2[9]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[23]_i_1 
       (.I0(gpio_io_o[8]),
        .I1(gpio_io_t[8]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[16]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[23]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[23]_i_1_n_0 ),
        .Q(reg1[8]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[23]_i_1 
       (.I0(reg2[8]),
        .I1(gpio_io_t[8]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[16]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[23]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[23]_i_1_n_0 ),
        .Q(reg2[8]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[24]_i_1 
       (.I0(gpio_io_o[7]),
        .I1(gpio_io_t[7]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[17]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[24]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[24]_i_1_n_0 ),
        .Q(reg1[7]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[24]_i_1 
       (.I0(reg2[7]),
        .I1(gpio_io_t[7]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[17]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[24]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[24]_i_1_n_0 ),
        .Q(reg2[7]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[25]_i_1 
       (.I0(gpio_io_o[6]),
        .I1(gpio_io_t[6]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[18]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[25]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[25]_i_1_n_0 ),
        .Q(reg1[6]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[25]_i_1 
       (.I0(reg2[6]),
        .I1(gpio_io_t[6]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[18]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[25]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[25]_i_1_n_0 ),
        .Q(reg2[6]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[26]_i_1 
       (.I0(gpio_io_o[5]),
        .I1(gpio_io_t[5]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[19]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[26]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[26]_i_1_n_0 ),
        .Q(reg1[5]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[26]_i_1 
       (.I0(reg2[5]),
        .I1(gpio_io_t[5]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[19]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[26]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[26]_i_1_n_0 ),
        .Q(reg2[5]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[8]_i_1 
       (.I0(gpio_io_o[23]),
        .I1(gpio_io_t[23]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[1]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[8]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[8]_i_1_n_0 ),
        .Q(reg1[23]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[8]_i_1 
       (.I0(reg2[23]),
        .I1(gpio_io_t[23]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[1]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[8]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[8]_i_1_n_0 ),
        .Q(reg2[23]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[27]_i_1 
       (.I0(gpio_io_o[4]),
        .I1(gpio_io_t[4]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[20]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[27]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[27]_i_1_n_0 ),
        .Q(reg1[4]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[27]_i_1 
       (.I0(reg2[4]),
        .I1(gpio_io_t[4]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[20]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[27]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[27]_i_1_n_0 ),
        .Q(reg2[4]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[28]_i_1 
       (.I0(gpio_io_o[3]),
        .I1(gpio_io_t[3]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[21]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[28]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[28]_i_1_n_0 ),
        .Q(reg1[3]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[28]_i_1 
       (.I0(reg2[3]),
        .I1(gpio_io_t[3]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[21]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[28]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[28]_i_1_n_0 ),
        .Q(reg2[3]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[29]_i_1 
       (.I0(gpio_io_o[2]),
        .I1(gpio_io_t[2]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[22]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[29]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[29]_i_1_n_0 ),
        .Q(reg1[2]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[29]_i_1 
       (.I0(reg2[2]),
        .I1(gpio_io_t[2]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[22]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[29]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[29]_i_1_n_0 ),
        .Q(reg2[2]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[30]_i_1 
       (.I0(gpio_io_o[1]),
        .I1(gpio_io_t[1]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[23]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[30]_i_1_n_0 ),
        .Q(reg1[1]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[30]_i_1 
       (.I0(reg2[1]),
        .I1(gpio_io_t[1]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[23]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[30]_i_1_n_0 ),
        .Q(reg2[1]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[31]_i_2 
       (.I0(gpio_io_o[0]),
        .I1(gpio_io_t[0]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[24]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[31]_i_2_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[31]_i_2_n_0 ),
        .Q(reg1[0]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[31]_i_1 
       (.I0(reg2[0]),
        .I1(gpio_io_t[0]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[24]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[31]_i_1_n_0 ),
        .Q(reg2[0]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[9]_i_1 
       (.I0(gpio_io_o[22]),
        .I1(gpio_io_t[22]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[2]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[9]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[9]_i_1_n_0 ),
        .Q(reg1[22]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[9]_i_1 
       (.I0(reg2[22]),
        .I1(gpio_io_t[22]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[2]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[9]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[9]_i_1_n_0 ),
        .Q(reg2[22]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[10]_i_1 
       (.I0(gpio_io_o[21]),
        .I1(gpio_io_t[21]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[3]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[10]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[10]_i_1_n_0 ),
        .Q(reg1[21]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[10]_i_1 
       (.I0(reg2[21]),
        .I1(gpio_io_t[21]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[3]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[10]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[10]_i_1_n_0 ),
        .Q(reg2[21]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[11]_i_1 
       (.I0(gpio_io_o[20]),
        .I1(gpio_io_t[20]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[4]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[11]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[11]_i_1_n_0 ),
        .Q(reg1[20]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[11]_i_1 
       (.I0(reg2[20]),
        .I1(gpio_io_t[20]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[4]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[11]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[11]_i_1_n_0 ),
        .Q(reg2[20]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[12]_i_1 
       (.I0(gpio_io_o[19]),
        .I1(gpio_io_t[19]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[5]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[12]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[12]_i_1_n_0 ),
        .Q(reg1[19]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[12]_i_1 
       (.I0(reg2[19]),
        .I1(gpio_io_t[19]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[5]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[12]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[12]_i_1_n_0 ),
        .Q(reg2[19]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[13]_i_1 
       (.I0(gpio_io_o[18]),
        .I1(gpio_io_t[18]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[6]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[13]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[13]_i_1_n_0 ),
        .Q(reg1[18]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[13]_i_1 
       (.I0(reg2[18]),
        .I1(gpio_io_t[18]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[6]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[13]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[13]_i_1_n_0 ),
        .Q(reg2[18]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[14]_i_1 
       (.I0(gpio_io_o[17]),
        .I1(gpio_io_t[17]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[7]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[14]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[14]_i_1_n_0 ),
        .Q(reg1[17]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[14]_i_1 
       (.I0(reg2[17]),
        .I1(gpio_io_t[17]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[7]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[14]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[14]_i_1_n_0 ),
        .Q(reg2[17]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[15]_i_1 
       (.I0(gpio_io_o[16]),
        .I1(gpio_io_t[16]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[8]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[15]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[15]_i_1_n_0 ),
        .Q(reg1[16]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[15]_i_1 
       (.I0(reg2[16]),
        .I1(gpio_io_t[16]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[8]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[15]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[15]_i_1_n_0 ),
        .Q(reg2[16]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[16]_i_1 
       (.I0(gpio_io_o[15]),
        .I1(gpio_io_t[15]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[9]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[16]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[16]_i_1_n_0 ),
        .Q(reg1[15]),
        .R(bus2ip_rnw_i_reg));
  LUT5 #(
    .INIT(32'hFE02C2C2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[16]_i_1 
       (.I0(reg2[15]),
        .I1(gpio_io_t[15]),
        .I2(p_0_in106_in),
        .I3(gpio_Data_In[9]),
        .I4(p_0_in108_in),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[16]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[16]_i_1_n_0 ),
        .Q(reg2[15]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[7]_i_1 
       (.I0(gpio2_io_o[24]),
        .I1(gpio2_io_t[24]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[7]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[7]_i_1_n_0 ),
        .Q(reg3[24]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[7]_i_1 
       (.I0(reg4[24]),
        .I1(gpio2_io_t[24]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[7]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[7]_i_1_n_0 ),
        .Q(reg4[24]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[17]_i_1 
       (.I0(gpio2_io_o[14]),
        .I1(gpio2_io_t[14]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[10]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[17]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[17]_i_1_n_0 ),
        .Q(reg3[14]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[17]_i_1 
       (.I0(reg4[14]),
        .I1(gpio2_io_t[14]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[10]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[17]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[17]_i_1_n_0 ),
        .Q(reg4[14]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[18]_i_1 
       (.I0(gpio2_io_o[13]),
        .I1(gpio2_io_t[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[11]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[18]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[18]_i_1_n_0 ),
        .Q(reg3[13]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[18]_i_1 
       (.I0(reg4[13]),
        .I1(gpio2_io_t[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[11]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[18]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[18]_i_1_n_0 ),
        .Q(reg4[13]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[19]_i_1 
       (.I0(gpio2_io_o[12]),
        .I1(gpio2_io_t[12]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[12]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[19]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[19]_i_1_n_0 ),
        .Q(reg3[12]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[19]_i_1 
       (.I0(reg4[12]),
        .I1(gpio2_io_t[12]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[12]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[19]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[19]_i_1_n_0 ),
        .Q(reg4[12]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[20]_i_1 
       (.I0(gpio2_io_o[11]),
        .I1(gpio2_io_t[11]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[13]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[20]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[20]_i_1_n_0 ),
        .Q(reg3[11]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[20]_i_1 
       (.I0(reg4[11]),
        .I1(gpio2_io_t[11]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[13]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[20]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[20]_i_1_n_0 ),
        .Q(reg4[11]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[21]_i_1 
       (.I0(gpio2_io_o[10]),
        .I1(gpio2_io_t[10]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[14]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[21]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[21]_i_1_n_0 ),
        .Q(reg3[10]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[21]_i_1 
       (.I0(reg4[10]),
        .I1(gpio2_io_t[10]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[14]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[21]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[21]_i_1_n_0 ),
        .Q(reg4[10]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[22]_i_1 
       (.I0(gpio2_io_o[9]),
        .I1(gpio2_io_t[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[15]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[22]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[22]_i_1_n_0 ),
        .Q(reg3[9]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[22]_i_1 
       (.I0(reg4[9]),
        .I1(gpio2_io_t[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[15]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[22]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[22]_i_1_n_0 ),
        .Q(reg4[9]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[23]_i_1 
       (.I0(gpio2_io_o[8]),
        .I1(gpio2_io_t[8]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[16]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[23]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[23]_i_1_n_0 ),
        .Q(reg3[8]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[23]_i_1 
       (.I0(reg4[8]),
        .I1(gpio2_io_t[8]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[16]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[23]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[23]_i_1_n_0 ),
        .Q(reg4[8]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[24]_i_1 
       (.I0(gpio2_io_o[7]),
        .I1(gpio2_io_t[7]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[17]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[24]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[24]_i_1_n_0 ),
        .Q(reg3[7]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[24]_i_1 
       (.I0(reg4[7]),
        .I1(gpio2_io_t[7]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[17]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[24]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[24]_i_1_n_0 ),
        .Q(reg4[7]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[25]_i_1 
       (.I0(gpio2_io_o[6]),
        .I1(gpio2_io_t[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[18]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[25]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[25]_i_1_n_0 ),
        .Q(reg3[6]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[25]_i_1 
       (.I0(reg4[6]),
        .I1(gpio2_io_t[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[18]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[25]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[25]_i_1_n_0 ),
        .Q(reg4[6]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[26]_i_1 
       (.I0(gpio2_io_o[5]),
        .I1(gpio2_io_t[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[19]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[26]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[26]_i_1_n_0 ),
        .Q(reg3[5]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[26]_i_1 
       (.I0(reg4[5]),
        .I1(gpio2_io_t[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[19]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[26]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[26]_i_1_n_0 ),
        .Q(reg4[5]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[8]_i_1 
       (.I0(gpio2_io_o[23]),
        .I1(gpio2_io_t[23]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[8]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[8]_i_1_n_0 ),
        .Q(reg3[23]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[8]_i_1 
       (.I0(reg4[23]),
        .I1(gpio2_io_t[23]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[8]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[8]_i_1_n_0 ),
        .Q(reg4[23]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[27]_i_1 
       (.I0(gpio2_io_o[4]),
        .I1(gpio2_io_t[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[20]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[27]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[27]_i_1_n_0 ),
        .Q(reg3[4]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[27]_i_1 
       (.I0(reg4[4]),
        .I1(gpio2_io_t[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[20]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[27]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[27]_i_1_n_0 ),
        .Q(reg4[4]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[28]_i_1 
       (.I0(gpio2_io_o[3]),
        .I1(gpio2_io_t[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[21]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[28]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[28]_i_1_n_0 ),
        .Q(reg3[3]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[28]_i_1 
       (.I0(reg4[3]),
        .I1(gpio2_io_t[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[21]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[28]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[28]_i_1_n_0 ),
        .Q(reg4[3]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[29]_i_1 
       (.I0(gpio2_io_o[2]),
        .I1(gpio2_io_t[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[22]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[29]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[29]_i_1_n_0 ),
        .Q(reg3[2]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[29]_i_1 
       (.I0(reg4[2]),
        .I1(gpio2_io_t[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[22]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[29]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[29]_i_1_n_0 ),
        .Q(reg4[2]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[30]_i_1 
       (.I0(gpio2_io_o[1]),
        .I1(gpio2_io_t[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[23]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[30]_i_1_n_0 ),
        .Q(reg3[1]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[30]_i_1 
       (.I0(reg4[1]),
        .I1(gpio2_io_t[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[23]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[30]_i_1_n_0 ),
        .Q(reg4[1]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[31]_i_1 
       (.I0(gpio2_io_o[0]),
        .I1(gpio2_io_t[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[24]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[31]_i_1_n_0 ),
        .Q(reg3[0]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[31]_i_1 
       (.I0(reg4[0]),
        .I1(gpio2_io_t[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[24]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[31]_i_1_n_0 ),
        .Q(reg4[0]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[9]_i_1 
       (.I0(gpio2_io_o[22]),
        .I1(gpio2_io_t[22]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[2]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[9]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[9]_i_1_n_0 ),
        .Q(reg3[22]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[9]_i_1 
       (.I0(reg4[22]),
        .I1(gpio2_io_t[22]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[2]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[9]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[9]_i_1_n_0 ),
        .Q(reg4[22]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[10]_i_1 
       (.I0(gpio2_io_o[21]),
        .I1(gpio2_io_t[21]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[3]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[10]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[10]_i_1_n_0 ),
        .Q(reg3[21]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[10]_i_1 
       (.I0(reg4[21]),
        .I1(gpio2_io_t[21]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[3]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[10]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[10]_i_1_n_0 ),
        .Q(reg4[21]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[11]_i_1 
       (.I0(gpio2_io_o[20]),
        .I1(gpio2_io_t[20]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[4]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[11]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[11]_i_1_n_0 ),
        .Q(reg3[20]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[11]_i_1 
       (.I0(reg4[20]),
        .I1(gpio2_io_t[20]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[4]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[11]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[11]_i_1_n_0 ),
        .Q(reg4[20]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[12]_i_1 
       (.I0(gpio2_io_o[19]),
        .I1(gpio2_io_t[19]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[5]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[12]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[12]_i_1_n_0 ),
        .Q(reg3[19]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[12]_i_1 
       (.I0(reg4[19]),
        .I1(gpio2_io_t[19]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[5]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[12]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[12]_i_1_n_0 ),
        .Q(reg4[19]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[13]_i_1 
       (.I0(gpio2_io_o[18]),
        .I1(gpio2_io_t[18]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[6]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[13]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[13]_i_1_n_0 ),
        .Q(reg3[18]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[13]_i_1 
       (.I0(reg4[18]),
        .I1(gpio2_io_t[18]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[6]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[13]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[13]_i_1_n_0 ),
        .Q(reg4[18]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[14]_i_1 
       (.I0(gpio2_io_o[17]),
        .I1(gpio2_io_t[17]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[7]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[14]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[14]_i_1_n_0 ),
        .Q(reg3[17]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[14]_i_1 
       (.I0(reg4[17]),
        .I1(gpio2_io_t[17]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[7]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[14]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[14]_i_1_n_0 ),
        .Q(reg4[17]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[15]_i_1 
       (.I0(gpio2_io_o[16]),
        .I1(gpio2_io_t[16]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[8]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[15]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[15]_i_1_n_0 ),
        .Q(reg3[16]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[15]_i_1 
       (.I0(reg4[16]),
        .I1(gpio2_io_t[16]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[8]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[15]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[15]_i_1_n_0 ),
        .Q(reg4[16]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[16]_i_1 
       (.I0(gpio2_io_o[15]),
        .I1(gpio2_io_t[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[9]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[16]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[16]_i_1_n_0 ),
        .Q(reg3[15]),
        .R(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[16]_i_1 
       (.I0(reg4[15]),
        .I1(gpio2_io_t[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[9]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[16]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[16]_i_1_n_0 ),
        .Q(reg4[15]),
        .R(bus2ip_rnw_i_reg));
  base_axi_gpio_0_1_cdc_sync \Dual.INPUT_DOUBLE_REGS4 
       (.D({gpio_data_in_xor[0],gpio_data_in_xor[1],gpio_data_in_xor[2],gpio_data_in_xor[3],gpio_data_in_xor[4],gpio_data_in_xor[5],gpio_data_in_xor[6],gpio_data_in_xor[7],gpio_data_in_xor[8],gpio_data_in_xor[9],gpio_data_in_xor[10],gpio_data_in_xor[11],gpio_data_in_xor[12],gpio_data_in_xor[13],gpio_data_in_xor[14],gpio_data_in_xor[15],gpio_data_in_xor[16],gpio_data_in_xor[17],gpio_data_in_xor[18],gpio_data_in_xor[19],gpio_data_in_xor[20],gpio_data_in_xor[21],gpio_data_in_xor[22],gpio_data_in_xor[23],gpio_data_in_xor[24]}),
        .Q({gpio_Data_In[0],gpio_Data_In[1],gpio_Data_In[2],gpio_Data_In[3],gpio_Data_In[4],gpio_Data_In[5],gpio_Data_In[6],gpio_Data_In[7],gpio_Data_In[8],gpio_Data_In[9],gpio_Data_In[10],gpio_Data_In[11],gpio_Data_In[12],gpio_Data_In[13],gpio_Data_In[14],gpio_Data_In[15],gpio_Data_In[16],gpio_Data_In[17],gpio_Data_In[18],gpio_Data_In[19],gpio_Data_In[20],gpio_Data_In[21],gpio_Data_In[22],gpio_Data_In[23],gpio_Data_In[24]}),
        .gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1],gpio_io_i_d2[2],gpio_io_i_d2[3],gpio_io_i_d2[4],gpio_io_i_d2[5],gpio_io_i_d2[6],gpio_io_i_d2[7],gpio_io_i_d2[8],gpio_io_i_d2[9],gpio_io_i_d2[10],gpio_io_i_d2[11],gpio_io_i_d2[12],gpio_io_i_d2[13],gpio_io_i_d2[14],gpio_io_i_d2[15],gpio_io_i_d2[16],gpio_io_i_d2[17],gpio_io_i_d2[18],gpio_io_i_d2[19],gpio_io_i_d2[20],gpio_io_i_d2[21],gpio_io_i_d2[22],gpio_io_i_d2[23],gpio_io_i_d2[24]}));
  base_axi_gpio_0_1_cdc_sync_0 \Dual.INPUT_DOUBLE_REGS5 
       (.D({gpio2_data_in_xor[0],gpio2_data_in_xor[1],gpio2_data_in_xor[2],gpio2_data_in_xor[3],gpio2_data_in_xor[4],gpio2_data_in_xor[5],gpio2_data_in_xor[6],gpio2_data_in_xor[7],gpio2_data_in_xor[8],gpio2_data_in_xor[9],gpio2_data_in_xor[10],gpio2_data_in_xor[11],gpio2_data_in_xor[12],gpio2_data_in_xor[13],gpio2_data_in_xor[14],gpio2_data_in_xor[15],gpio2_data_in_xor[16],gpio2_data_in_xor[17],gpio2_data_in_xor[18],gpio2_data_in_xor[19],gpio2_data_in_xor[20],gpio2_data_in_xor[21],gpio2_data_in_xor[22],gpio2_data_in_xor[23],gpio2_data_in_xor[24]}),
        .Q({gpio2_Data_In[0],gpio2_Data_In[1],gpio2_Data_In[2],gpio2_Data_In[3],gpio2_Data_In[4],gpio2_Data_In[5],gpio2_Data_In[6],gpio2_Data_In[7],gpio2_Data_In[8],gpio2_Data_In[9],gpio2_Data_In[10],gpio2_Data_In[11],gpio2_Data_In[12],gpio2_Data_In[13],gpio2_Data_In[14],gpio2_Data_In[15],gpio2_Data_In[16],gpio2_Data_In[17],gpio2_Data_In[18],gpio2_Data_In[19],gpio2_Data_In[20],gpio2_Data_In[21],gpio2_Data_In[22],gpio2_Data_In[23],gpio2_Data_In[24]}),
        .gpio2_io_i(gpio2_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio2_io_i_d2[0],gpio2_io_i_d2[1],gpio2_io_i_d2[2],gpio2_io_i_d2[3],gpio2_io_i_d2[4],gpio2_io_i_d2[5],gpio2_io_i_d2[6],gpio2_io_i_d2[7],gpio2_io_i_d2[8],gpio2_io_i_d2[9],gpio2_io_i_d2[10],gpio2_io_i_d2[11],gpio2_io_i_d2[12],gpio2_io_i_d2[13],gpio2_io_i_d2[14],gpio2_io_i_d2[15],gpio2_io_i_d2[16],gpio2_io_i_d2[17],gpio2_io_i_d2[18],gpio2_io_i_d2[19],gpio2_io_i_d2[20],gpio2_io_i_d2[21],gpio2_io_i_d2[22],gpio2_io_i_d2[23],gpio2_io_i_d2[24]}));
  FDRE \Dual.gen_interrupt_dual.GPIO2_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_ints2),
        .Q(GPIO2_intr),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_1 
       (.I0(\Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ),
        .I1(\Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ),
        .I2(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[24] ),
        .I3(\Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0 ),
        .I4(\Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0 ),
        .O(or_ints));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_2 
       (.I0(p_18_in20_in),
        .I1(p_17_in19_in),
        .I2(p_20_in22_in),
        .I3(p_19_in21_in),
        .I4(p_21_in23_in),
        .I5(p_22_in24_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_3 
       (.I0(p_0_in2_in),
        .I1(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .I2(p_2_in4_in),
        .I3(p_1_in3_in),
        .I4(p_3_in5_in),
        .I5(p_4_in6_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_4 
       (.I0(p_6_in8_in),
        .I1(p_5_in7_in),
        .I2(p_8_in10_in),
        .I3(p_7_in9_in),
        .I4(p_9_in11_in),
        .I5(p_10_in12_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_5 
       (.I0(p_12_in14_in),
        .I1(p_11_in13_in),
        .I2(p_14_in16_in),
        .I3(p_13_in15_in),
        .I4(p_15_in17_in),
        .I5(p_16_in18_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0 ));
  FDRE \Dual.gen_interrupt_dual.GPIO_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_ints),
        .Q(GPIO_intr),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[0]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[10]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[10] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[11]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[11] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[12]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[12] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[13]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[13] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[14]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[14] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[15]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[15] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[16]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[16] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[17]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[17] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[18]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[18] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[19]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[19] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[1]),
        .Q(p_0_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[20]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[20] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[21]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[21] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[22]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[22] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[23]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[23] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[24]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[24] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[2]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[2] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[3]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[3] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[4]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[4] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[5]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[5] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[6]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[6] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[7]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[7] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[8]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[8] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[9]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[9] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[0]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[10]),
        .Q(p_9_in11_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[11]),
        .Q(p_10_in12_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[12]),
        .Q(p_11_in13_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[13]),
        .Q(p_12_in14_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[14]),
        .Q(p_13_in15_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[15]),
        .Q(p_14_in16_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[16]),
        .Q(p_15_in17_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[17]),
        .Q(p_16_in18_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[18]),
        .Q(p_17_in19_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[19]),
        .Q(p_18_in20_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[1]),
        .Q(p_0_in2_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[20]),
        .Q(p_19_in21_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[21]),
        .Q(p_20_in22_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[22]),
        .Q(p_21_in23_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[23]),
        .Q(p_22_in24_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[24]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[24] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[2]),
        .Q(p_1_in3_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[3]),
        .Q(p_2_in4_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[4]),
        .Q(p_3_in5_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[5]),
        .Q(p_4_in6_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[6]),
        .Q(p_5_in7_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[7]),
        .Q(p_6_in8_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[8]),
        .Q(p_7_in9_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[9]),
        .Q(p_8_in10_in),
        .R(bus2ip_reset));
  FDRE \Dual.gpio2_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[0]),
        .Q(gpio2_Data_In[0]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[10]),
        .Q(gpio2_Data_In[10]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[11]),
        .Q(gpio2_Data_In[11]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[12]),
        .Q(gpio2_Data_In[12]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[13]),
        .Q(gpio2_Data_In[13]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[14]),
        .Q(gpio2_Data_In[14]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[15]),
        .Q(gpio2_Data_In[15]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[16]),
        .Q(gpio2_Data_In[16]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[17]),
        .Q(gpio2_Data_In[17]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[18]),
        .Q(gpio2_Data_In[18]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[19]),
        .Q(gpio2_Data_In[19]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[1]),
        .Q(gpio2_Data_In[1]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[20]),
        .Q(gpio2_Data_In[20]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[21]),
        .Q(gpio2_Data_In[21]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[22]),
        .Q(gpio2_Data_In[22]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[23]),
        .Q(gpio2_Data_In[23]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[24]),
        .Q(gpio2_Data_In[24]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[2]),
        .Q(gpio2_Data_In[2]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[3]),
        .Q(gpio2_Data_In[3]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[4]),
        .Q(gpio2_Data_In[4]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[5]),
        .Q(gpio2_Data_In[5]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[6]),
        .Q(gpio2_Data_In[6]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[7]),
        .Q(gpio2_Data_In[7]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[8]),
        .Q(gpio2_Data_In[8]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[9]),
        .Q(gpio2_Data_In[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[24]),
        .Q(gpio2_io_o[24]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[14]),
        .Q(gpio2_io_o[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[11] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[13]),
        .Q(gpio2_io_o[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[12] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[12]),
        .Q(gpio2_io_o[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[13] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[11]),
        .Q(gpio2_io_o[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[14] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[10]),
        .Q(gpio2_io_o[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[15] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[9]),
        .Q(gpio2_io_o[9]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[16] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[8]),
        .Q(gpio2_io_o[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[17] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[7]),
        .Q(gpio2_io_o[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[18] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[6]),
        .Q(gpio2_io_o[6]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[19] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[5]),
        .Q(gpio2_io_o[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[23]),
        .Q(gpio2_io_o[23]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[20] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[4]),
        .Q(gpio2_io_o[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[21] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[3]),
        .Q(gpio2_io_o[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[22] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[2]),
        .Q(gpio2_io_o[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[23] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[1]),
        .Q(gpio2_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[24] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[0]),
        .Q(gpio2_io_o[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[22]),
        .Q(gpio2_io_o[22]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[21]),
        .Q(gpio2_io_o[21]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[20]),
        .Q(gpio2_io_o[20]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[19]),
        .Q(gpio2_io_o[19]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[18]),
        .Q(gpio2_io_o[18]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[17]),
        .Q(gpio2_io_o[17]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[16]),
        .Q(gpio2_io_o[16]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_1),
        .D(s_axi_wdata[15]),
        .Q(gpio2_io_o[15]),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[24]),
        .Q(gpio2_io_t[24]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[14]),
        .Q(gpio2_io_t[14]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[11] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[13]),
        .Q(gpio2_io_t[13]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[12] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[12]),
        .Q(gpio2_io_t[12]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[13] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[11]),
        .Q(gpio2_io_t[11]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[14] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[10]),
        .Q(gpio2_io_t[10]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[15] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[9]),
        .Q(gpio2_io_t[9]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[16] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[8]),
        .Q(gpio2_io_t[8]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[17] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[7]),
        .Q(gpio2_io_t[7]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[18] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[6]),
        .Q(gpio2_io_t[6]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[19] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[5]),
        .Q(gpio2_io_t[5]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[23]),
        .Q(gpio2_io_t[23]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[20] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[4]),
        .Q(gpio2_io_t[4]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[21] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[3]),
        .Q(gpio2_io_t[3]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[22] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[2]),
        .Q(gpio2_io_t[2]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[23] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[1]),
        .Q(gpio2_io_t[1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[24] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[0]),
        .Q(gpio2_io_t[0]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[22]),
        .Q(gpio2_io_t[22]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[21]),
        .Q(gpio2_io_t[21]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[20]),
        .Q(gpio2_io_t[20]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[19]),
        .Q(gpio2_io_t[19]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[18]),
        .Q(gpio2_io_t[18]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[17]),
        .Q(gpio2_io_t[17]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[16]),
        .Q(gpio2_io_t[16]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_2),
        .D(s_axi_wdata[15]),
        .Q(gpio2_io_t[15]),
        .S(bus2ip_reset));
  FDRE \Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[10]),
        .Q(gpio_Data_In[10]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[11]),
        .Q(gpio_Data_In[11]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[12]),
        .Q(gpio_Data_In[12]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[13]),
        .Q(gpio_Data_In[13]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[14]),
        .Q(gpio_Data_In[14]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[15]),
        .Q(gpio_Data_In[15]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[16]),
        .Q(gpio_Data_In[16]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[17]),
        .Q(gpio_Data_In[17]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[18]),
        .Q(gpio_Data_In[18]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[19]),
        .Q(gpio_Data_In[19]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[20]),
        .Q(gpio_Data_In[20]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[21]),
        .Q(gpio_Data_In[21]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[22]),
        .Q(gpio_Data_In[22]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[23]),
        .Q(gpio_Data_In[23]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[24]),
        .Q(gpio_Data_In[24]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[2]),
        .Q(gpio_Data_In[2]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[3]),
        .Q(gpio_Data_In[3]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[4]),
        .Q(gpio_Data_In[4]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[5]),
        .Q(gpio_Data_In[5]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[6]),
        .Q(gpio_Data_In[6]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[7]),
        .Q(gpio_Data_In[7]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[8]),
        .Q(gpio_Data_In[8]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[9]),
        .Q(gpio_Data_In[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[24]),
        .Q(gpio_io_o[24]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(gpio_io_o[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(gpio_io_o[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(gpio_io_o[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(gpio_io_o[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(gpio_io_o[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(gpio_io_o[9]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(gpio_io_o[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(gpio_io_o[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(gpio_io_o[6]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(gpio_io_o[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[23]),
        .Q(gpio_io_o[23]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(gpio_io_o[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(gpio_io_o[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(gpio_io_o[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(gpio_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(gpio_io_o[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[22]),
        .Q(gpio_io_o[22]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[21]),
        .Q(gpio_io_o[21]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[20]),
        .Q(gpio_io_o[20]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[19]),
        .Q(gpio_io_o[19]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[18]),
        .Q(gpio_io_o[18]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(gpio_io_o[17]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(gpio_io_o[16]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(gpio_io_o[15]),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[24]),
        .Q(gpio_io_t[24]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[14]),
        .Q(gpio_io_t[14]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[11] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[13]),
        .Q(gpio_io_t[13]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[12] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[12]),
        .Q(gpio_io_t[12]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[13] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[11]),
        .Q(gpio_io_t[11]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[14] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[10]),
        .Q(gpio_io_t[10]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[15] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[9]),
        .Q(gpio_io_t[9]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[16] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[8]),
        .Q(gpio_io_t[8]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[17] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[7]),
        .Q(gpio_io_t[7]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[18] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[6]),
        .Q(gpio_io_t[6]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[19] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[5]),
        .Q(gpio_io_t[5]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[23]),
        .Q(gpio_io_t[23]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[20] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[4]),
        .Q(gpio_io_t[4]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[21] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[3]),
        .Q(gpio_io_t[3]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[22] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[2]),
        .Q(gpio_io_t[2]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[23] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[1]),
        .Q(gpio_io_t[1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[24] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[0]),
        .Q(gpio_io_t[0]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[22]),
        .Q(gpio_io_t[22]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[21]),
        .Q(gpio_io_t[21]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[20]),
        .Q(gpio_io_t[20]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[19]),
        .Q(gpio_io_t[19]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[18]),
        .Q(gpio_io_t[18]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[17]),
        .Q(gpio_io_t[17]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[16]),
        .Q(gpio_io_t[16]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_rnw_i_reg_0),
        .D(s_axi_wdata[15]),
        .Q(gpio_io_t[15]),
        .S(bus2ip_reset));
  LUT5 #(
    .INIT(32'h00040448)) 
    GPIO_DBus
       (.I0(p_20_in),
        .I1(Bus_RNW_reg),
        .I2(p_19_in),
        .I3(p_18_in),
        .I4(p_17_in),
        .O(\ip2bus_data_i_D1_reg[7] ));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h04)) 
    iGPIO_xferAck_i_1
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_1 
       (.I0(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0 ),
        .I1(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0 ),
        .I2(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[24] ),
        .I3(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4_n_0 ),
        .I4(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5_n_0 ),
        .O(or_ints2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2 
       (.I0(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[19] ),
        .I1(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[18] ),
        .I2(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[21] ),
        .I3(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[20] ),
        .I4(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[22] ),
        .I5(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[23] ),
        .O(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3 
       (.I0(p_0_in),
        .I1(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .I2(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[3] ),
        .I3(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[2] ),
        .I4(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[4] ),
        .I5(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[5] ),
        .O(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4 
       (.I0(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[7] ),
        .I1(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[6] ),
        .I2(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[9] ),
        .I3(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[8] ),
        .I4(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[10] ),
        .I5(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[11] ),
        .O(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5 
       (.I0(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[13] ),
        .I1(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[12] ),
        .I2(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[15] ),
        .I3(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[14] ),
        .I4(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[16] ),
        .I5(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[17] ),
        .O(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5_n_0 ));
endmodule

module base_axi_gpio_0_1_address_decoder
   (\ip2bus_data_i_D1_reg[0] ,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[31]_0 ,
    p_19_in,
    p_20_in,
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ,
    ipif_glbl_irpt_enable_reg_reg,
    p_0_in106_in,
    p_0_in108_in,
    gpio_reg_en,
    E,
    \Dual.gpio_OE_reg[0] ,
    \Dual.gpio2_Data_Out_reg[0] ,
    \Dual.gpio2_OE_reg[0] ,
    s_axi_wready,
    s_axi_arready,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    irpt_wrack,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ,
    intr_rd_ce_or_reduce,
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ,
    intr_wr_ce_or_reduce,
    ipif_glbl_irpt_enable_reg_reg_0,
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ,
    Q,
    s_axi_aclk,
    \bus2ip_addr_i_reg[8] ,
    bus2ip_rnw_i_reg,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    is_read_reg,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ,
    ip2bus_wrack_i_D1,
    is_write_reg,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    reg1,
    reg2,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    reg3,
    reg4,
    p_1_in,
    \ip_irpt_enable_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[0] ,
    s_axi_wdata,
    GPIO_xferAck_i,
    gpio_xferAck_Reg);
  output \ip2bus_data_i_D1_reg[0] ;
  output \ip2bus_data_i_D1_reg[31] ;
  output \ip2bus_data_i_D1_reg[31]_0 ;
  output p_19_in;
  output p_20_in;
  output \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ;
  output ipif_glbl_irpt_enable_reg_reg;
  output p_0_in106_in;
  output p_0_in108_in;
  output gpio_reg_en;
  output [0:0]E;
  output [0:0]\Dual.gpio_OE_reg[0] ;
  output [0:0]\Dual.gpio2_Data_Out_reg[0] ;
  output [0:0]\Dual.gpio2_OE_reg[0] ;
  output s_axi_wready;
  output s_axi_arready;
  output [25:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  output intr_rd_ce_or_reduce;
  output \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ;
  output intr_wr_ce_or_reduce;
  output ipif_glbl_irpt_enable_reg_reg_0;
  output \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ;
  input Q;
  input s_axi_aclk;
  input [6:0]\bus2ip_addr_i_reg[8] ;
  input bus2ip_rnw_i_reg;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input is_read_reg;
  input [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  input ip2bus_wrack_i_D1;
  input is_write_reg;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input [24:0]reg1;
  input [24:0]reg2;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input [24:0]reg3;
  input [24:0]reg4;
  input p_1_in;
  input \ip_irpt_enable_reg_reg[1] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \ip_irpt_enable_reg_reg[0] ;
  input [0:0]s_axi_wdata;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;

  wire Bus_RNW_reg_i_1_n_0;
  wire [25:0]D;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ;
  wire [0:0]\Dual.gpio2_Data_Out_reg[0] ;
  wire [0:0]\Dual.gpio2_OE_reg[0] ;
  wire [0:0]\Dual.gpio_OE_reg[0] ;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  wire \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  wire Q;
  wire [6:0]\bus2ip_addr_i_reg[8] ;
  wire bus2ip_rnw_i_reg;
  wire cs_ce_clr;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1[10]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[11]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[12]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[13]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[14]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[15]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[16]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[17]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[18]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[19]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[20]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[21]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[22]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[23]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[24]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[25]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[26]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[27]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[28]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[29]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[30]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[30]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[7]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[7]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[7]_i_4_n_0 ;
  wire \ip2bus_data_i_D1[8]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[9]_i_2_n_0 ;
  wire \ip2bus_data_i_D1_reg[0] ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire \ip2bus_data_i_D1_reg[31]_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i_D1;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire \ip_irpt_enable_reg_reg[1] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_reg;
  wire is_write_reg;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_16_in;
  wire p_19_in;
  wire p_1_in;
  wire p_1_out;
  wire p_20_in;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_4_in;
  wire p_4_out;
  wire p_5_in;
  wire p_5_out;
  wire p_6_out;
  wire p_7_in;
  wire p_7_out;
  wire p_8_in;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_1;
  wire [24:0]reg1;
  wire [24:0]reg2;
  wire [24:0]reg3;
  wire [24:0]reg4;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [0:0]s_axi_wdata;
  wire s_axi_wready;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(ipif_glbl_irpt_enable_reg_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[31]_i_1 
       (.I0(bus2ip_rnw_i_reg),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .I3(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[31]_i_3 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .O(p_0_in106_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[31]_i_4 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .O(p_0_in108_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[31]_i_2 
       (.I0(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .O(gpio_reg_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Dual.gpio2_Data_Out[0]_i_1 
       (.I0(bus2ip_rnw_i_reg),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(\Dual.gpio2_Data_Out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \Dual.gpio2_OE[0]_i_1 
       (.I0(bus2ip_rnw_i_reg),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(\Dual.gpio2_OE_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \Dual.gpio_Data_Out[0]_i_1 
       (.I0(bus2ip_rnw_i_reg),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Dual.gpio_OE[0]_i_1 
       (.I0(bus2ip_rnw_i_reg),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(\Dual.gpio_OE_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .O(p_3_out));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out),
        .Q(p_20_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(p_9_out));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_7_out));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(p_5_out));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out),
        .Q(\ip2bus_data_i_D1_reg[0] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(p_4_out));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_4_out),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_arready),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_15_out));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_15_out),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(pselect_hit_i_1),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(pselect_hit_i_1),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(\ip2bus_data_i_D1_reg[31]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(pselect_hit_i_1),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ),
        .Q(\ip2bus_data_i_D1_reg[31] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(p_12_out));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_12_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(p_8_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(intr_rd_ce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ip2Bus_RdAck_intr_reg_hole_d1),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(intr_wr_ce_or_reduce));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2 
       (.I0(p_16_in),
        .I1(p_2_in),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .I3(p_14_in),
        .I4(p_15_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3 
       (.I0(p_12_in),
        .I1(p_13_in),
        .I2(p_10_in),
        .I3(p_11_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4 
       (.I0(p_5_in),
        .I1(p_7_in),
        .I2(p_3_in),
        .I3(p_4_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ip2Bus_WrAck_intr_reg_hole_d1),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(Q),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(pselect_hit_i_1));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    intr2bus_rdack_i_1
       (.I0(irpt_rdack_d1),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(p_9_in),
        .I3(p_8_in),
        .I4(\ip2bus_data_i_D1_reg[0] ),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    intr2bus_wrack_i_1
       (.I0(p_9_in),
        .I1(p_8_in),
        .I2(\ip2bus_data_i_D1_reg[0] ),
        .I3(irpt_wrack_d1),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(interrupt_wrce_strb));
  LUT5 #(
    .INIT(32'h00000080)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(p_9_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(\ip2bus_data_i_D1_reg[0] ),
        .I4(p_8_in),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[10]_i_1 
       (.I0(reg1[21]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[21]),
        .I4(\ip2bus_data_i_D1[10]_i_2_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[10]_i_2 
       (.I0(reg3[21]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[21]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[11]_i_1 
       (.I0(reg1[20]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[20]),
        .I4(\ip2bus_data_i_D1[11]_i_2_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[11]_i_2 
       (.I0(reg3[20]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[20]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[12]_i_1 
       (.I0(reg1[19]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[19]),
        .I4(\ip2bus_data_i_D1[12]_i_2_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[12]_i_2 
       (.I0(reg3[19]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[19]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[13]_i_1 
       (.I0(reg1[18]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[18]),
        .I4(\ip2bus_data_i_D1[13]_i_2_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[13]_i_2 
       (.I0(reg3[18]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[18]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[14]_i_1 
       (.I0(reg1[17]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[17]),
        .I4(\ip2bus_data_i_D1[14]_i_2_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[14]_i_2 
       (.I0(reg3[17]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[17]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[15]_i_1 
       (.I0(reg1[16]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[16]),
        .I4(\ip2bus_data_i_D1[15]_i_2_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[15]_i_2 
       (.I0(reg3[16]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[16]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[16]_i_1 
       (.I0(reg1[15]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[15]),
        .I4(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[16]_i_2 
       (.I0(reg3[15]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[15]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[17]_i_1 
       (.I0(reg1[14]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[14]),
        .I4(\ip2bus_data_i_D1[17]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[17]_i_2 
       (.I0(reg3[14]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[14]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[18]_i_1 
       (.I0(reg1[13]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[13]),
        .I4(\ip2bus_data_i_D1[18]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[18]_i_2 
       (.I0(reg3[13]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[13]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[19]_i_1 
       (.I0(reg1[12]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[12]),
        .I4(\ip2bus_data_i_D1[19]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[19]_i_2 
       (.I0(reg3[12]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[12]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[20]_i_1 
       (.I0(reg1[11]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[11]),
        .I4(\ip2bus_data_i_D1[20]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[20]_i_2 
       (.I0(reg3[11]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[11]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[21]_i_1 
       (.I0(reg1[10]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[10]),
        .I4(\ip2bus_data_i_D1[21]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[21]_i_2 
       (.I0(reg3[10]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[10]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[22]_i_1 
       (.I0(reg1[9]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[9]),
        .I4(\ip2bus_data_i_D1[22]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[22]_i_2 
       (.I0(reg3[9]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[9]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[23]_i_1 
       (.I0(reg1[8]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[8]),
        .I4(\ip2bus_data_i_D1[23]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[23]_i_2 
       (.I0(reg3[8]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[8]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[24]_i_1 
       (.I0(reg1[7]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[7]),
        .I4(\ip2bus_data_i_D1[24]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[24]_i_2 
       (.I0(reg3[7]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[7]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[25]_i_1 
       (.I0(reg1[6]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[6]),
        .I4(\ip2bus_data_i_D1[25]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[25]_i_2 
       (.I0(reg3[6]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[6]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[26]_i_1 
       (.I0(reg1[5]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[5]),
        .I4(\ip2bus_data_i_D1[26]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[26]_i_2 
       (.I0(reg3[5]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[5]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[27]_i_1 
       (.I0(reg1[4]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[4]),
        .I4(\ip2bus_data_i_D1[27]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[27]_i_2 
       (.I0(reg3[4]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[4]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[28]_i_1 
       (.I0(reg1[3]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[3]),
        .I4(\ip2bus_data_i_D1[28]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[28]_i_2 
       (.I0(reg3[3]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[3]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(reg1[2]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[2]),
        .I4(\ip2bus_data_i_D1[29]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[29]_i_2 
       (.I0(reg3[2]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[2]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(reg1[1]),
        .I3(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I4(reg2[1]),
        .I5(\ip2bus_data_i_D1[30]_i_3_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(p_1_in),
        .I1(\ip2bus_data_i_D1_reg[0] ),
        .I2(\ip_irpt_enable_reg_reg[1] ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(p_8_in),
        .O(\ip2bus_data_i_D1[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[30]_i_3 
       (.I0(reg3[1]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[1]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\ip2bus_data_i_D1[31]_i_2_n_0 ),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(reg1[0]),
        .I3(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I4(reg2[0]),
        .I5(\ip2bus_data_i_D1[31]_i_3_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I1(\ip2bus_data_i_D1_reg[0] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(p_8_in),
        .O(\ip2bus_data_i_D1[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[31]_i_3 
       (.I0(reg3[0]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[0]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[7]_i_1 
       (.I0(reg1[24]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[24]),
        .I4(\ip2bus_data_i_D1[7]_i_4_n_0 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ip2bus_data_i_D1[7]_i_2 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(p_20_in),
        .O(\ip2bus_data_i_D1[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ip2bus_data_i_D1[7]_i_3 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(p_19_in),
        .O(\ip2bus_data_i_D1[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[7]_i_4 
       (.I0(reg3[24]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[24]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[8]_i_1 
       (.I0(reg1[23]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[23]),
        .I4(\ip2bus_data_i_D1[8]_i_2_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[8]_i_2 
       (.I0(reg3[23]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[23]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \ip2bus_data_i_D1[9]_i_1 
       (.I0(reg1[22]),
        .I1(\ip2bus_data_i_D1[7]_i_2_n_0 ),
        .I2(\ip2bus_data_i_D1[7]_i_3_n_0 ),
        .I3(reg2[22]),
        .I4(\ip2bus_data_i_D1[9]_i_2_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[9]_i_2 
       (.I0(reg3[22]),
        .I1(\ip2bus_data_i_D1_reg[31]_0 ),
        .I2(reg4[22]),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I5(\ip2bus_data_i_D1_reg[31] ),
        .O(\ip2bus_data_i_D1[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata),
        .I1(p_9_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    irpt_rdack_d1_i_1
       (.I0(p_9_in),
        .I1(p_8_in),
        .I2(\ip2bus_data_i_D1_reg[0] ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    irpt_wrack_d1_i_1
       (.I0(p_9_in),
        .I1(p_8_in),
        .I2(\ip2bus_data_i_D1_reg[0] ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(irpt_wrack));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(is_read_reg),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [0]),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(is_write_reg),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [0]),
        .O(s_axi_wready));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "25" *) (* C_GPIO_WIDTH = "25" *) 
(* C_INTERRUPT_PRESENT = "1" *) (* C_IS_DUAL = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module base_axi_gpio_0_1_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* max_fanout = "10000" *) (* sigis = "Clk" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [24:0]gpio_io_i;
  output [24:0]gpio_io_o;
  output [24:0]gpio_io_t;
  input [24:0]gpio2_io_i;
  output [24:0]gpio2_io_o;
  output [24:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_17;
  wire AXI_LITE_IPIF_I_n_18;
  wire AXI_LITE_IPIF_I_n_51;
  wire AXI_LITE_IPIF_I_n_52;
  wire AXI_LITE_IPIF_I_n_54;
  wire AXI_LITE_IPIF_I_n_56;
  wire AXI_LITE_IPIF_I_n_57;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_8 ;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 ;
  wire IP2INTC_Irpt_i;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_19_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_20_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ;
  wire [5:6]bus2ip_addr;
  wire [1:1]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_reset_i_1_n_0;
  wire bus2ip_rnw;
  wire [24:0]gpio2_io_i;
  wire [24:0]gpio2_io_o;
  wire [24:0]gpio2_io_t;
  wire gpio_core_1_n_104;
  wire [24:0]gpio_io_i;
  wire [24:0]gpio_io_o;
  wire [24:0]gpio_io_t;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [7:29]ip2bus_data;
  wire [30:31]ip2bus_data_i;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire [0:0]p_0_out;
  wire p_1_in;
  wire [7:31]reg1;
  wire [7:31]reg2;
  wire [7:31]reg3;
  wire [7:31]reg4;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Rst" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24:0] = \^s_axi_rdata [24:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  base_axi_gpio_0_1_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({p_0_out,ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data_i[30],ip2bus_data_i[31]}),
        .\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] (AXI_LITE_IPIF_I_n_57),
        .\Dual.gpio2_Data_Out_reg[0] (AXI_LITE_IPIF_I_n_17),
        .\Dual.gpio2_OE_reg[0] (AXI_LITE_IPIF_I_n_18),
        .\Dual.gpio_OE_reg[0] (AXI_LITE_IPIF_I_n_16),
        .E(AXI_LITE_IPIF_I_n_15),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (gpio_core_1_n_104),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (AXI_LITE_IPIF_I_n_51),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg (AXI_LITE_IPIF_I_n_54),
        .\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg (AXI_LITE_IPIF_I_n_52),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[0] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[7],ip2bus_data_i_D1[8],ip2bus_data_i_D1[9],ip2bus_data_i_D1[10],ip2bus_data_i_D1[11],ip2bus_data_i_D1[12],ip2bus_data_i_D1[13],ip2bus_data_i_D1[14],ip2bus_data_i_D1[15],ip2bus_data_i_D1[16],ip2bus_data_i_D1[17],ip2bus_data_i_D1[18],ip2bus_data_i_D1[19],ip2bus_data_i_D1[20],ip2bus_data_i_D1[21],ip2bus_data_i_D1[22],ip2bus_data_i_D1[23],ip2bus_data_i_D1[24],ip2bus_data_i_D1[25],ip2bus_data_i_D1[26],ip2bus_data_i_D1[27],ip2bus_data_i_D1[28],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .\ip_irpt_enable_reg_reg[0] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 ),
        .\ip_irpt_enable_reg_reg[1] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_8 ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(AXI_LITE_IPIF_I_n_56),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in106_in(p_0_in106_in),
        .p_0_in108_in(p_0_in108_in),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_18_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .p_19_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_19_in ),
        .p_1_in(p_1_in),
        .p_20_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_20_in ),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .reg1({reg1[7],reg1[8],reg1[9],reg1[10],reg1[11],reg1[12],reg1[13],reg1[14],reg1[15],reg1[16],reg1[17],reg1[18],reg1[19],reg1[20],reg1[21],reg1[22],reg1[23],reg1[24],reg1[25],reg1[26],reg1[27],reg1[28],reg1[29],reg1[30],reg1[31]}),
        .reg2({reg2[7],reg2[8],reg2[9],reg2[10],reg2[11],reg2[12],reg2[13],reg2[14],reg2[15],reg2[16],reg2[17],reg2[18],reg2[19],reg2[20],reg2[21],reg2[22],reg2[23],reg2[24],reg2[25],reg2[26],reg2[27],reg2[28],reg2[29],reg2[30],reg2[31]}),
        .reg3({reg3[7],reg3[8],reg3[9],reg3[10],reg3[11],reg3[12],reg3[13],reg3[14],reg3[15],reg3[16],reg3[17],reg3[18],reg3[19],reg3[20],reg3[21],reg3[22],reg3[23],reg3[24],reg3[25],reg3[26],reg3[27],reg3[28],reg3[29],reg3[30],reg3[31]}),
        .reg4({reg4[7],reg4[8],reg4[9],reg4[10],reg4[11],reg4[12],reg4[13],reg4[14],reg4[15],reg4[16],reg4[17],reg4[18],reg4[19],reg4[20],reg4[21],reg4[22],reg4[23],reg4[24],reg4[25],reg4[26],reg4[27],reg4[28],reg4[29],reg4[30],reg4[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [24:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[31]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  base_axi_gpio_0_1_interrupt_control \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (AXI_LITE_IPIF_I_n_56),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .IP2INTC_Irpt_i(IP2INTC_Irpt_i),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .\ip_irpt_enable_reg_reg[0]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 ),
        .\ip_irpt_enable_reg_reg[1]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_8 ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg_0(AXI_LITE_IPIF_I_n_51),
        .p_1_in(p_1_in),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1:0]));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_54),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_wr_ce_or_reduce),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_52),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(bus2ip_reset));
  (* sigis = "INTR_LEVEL_HIGH" *) 
  FDRE \INTR_CTRLR_GEN.ip2intc_irpt_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2INTC_Irpt_i),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_reset_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_reset_i_1_n_0));
  FDRE bus2ip_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset_i_1_n_0),
        .Q(bus2ip_reset),
        .R(1'b0));
  base_axi_gpio_0_1_GPIO_Core gpio_core_1
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .E(AXI_LITE_IPIF_I_n_15),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_57),
        .bus2ip_rnw_i_reg_0(AXI_LITE_IPIF_I_n_16),
        .bus2ip_rnw_i_reg_1(AXI_LITE_IPIF_I_n_17),
        .bus2ip_rnw_i_reg_2(AXI_LITE_IPIF_I_n_18),
        .gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(gpio_io_t),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .\ip2bus_data_i_D1_reg[7] (gpio_core_1_n_104),
        .p_0_in106_in(p_0_in106_in),
        .p_0_in108_in(p_0_in108_in),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_18_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .p_19_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_19_in ),
        .p_20_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_20_in ),
        .reg1({reg1[7],reg1[8],reg1[9],reg1[10],reg1[11],reg1[12],reg1[13],reg1[14],reg1[15],reg1[16],reg1[17],reg1[18],reg1[19],reg1[20],reg1[21],reg1[22],reg1[23],reg1[24],reg1[25],reg1[26],reg1[27],reg1[28],reg1[29],reg1[30],reg1[31]}),
        .reg2({reg2[7],reg2[8],reg2[9],reg2[10],reg2[11],reg2[12],reg2[13],reg2[14],reg2[15],reg2[16],reg2[17],reg2[18],reg2[19],reg2[20],reg2[21],reg2[22],reg2[23],reg2[24],reg2[25],reg2[26],reg2[27],reg2[28],reg2[29],reg2[30],reg2[31]}),
        .reg3({reg3[7],reg3[8],reg3[9],reg3[10],reg3[11],reg3[12],reg3[13],reg3[14],reg3[15],reg3[16],reg3[17],reg3[18],reg3[19],reg3[20],reg3[21],reg3[22],reg3[23],reg3[24],reg3[25],reg3[26],reg3[27],reg3[28],reg3[29],reg3[30],reg3[31]}),
        .reg4({reg4[7],reg4[8],reg4[9],reg4[10],reg4[11],reg4[12],reg4[13],reg4[14],reg4[15],reg4[16],reg4[17],reg4[18],reg4[19],reg4[20],reg4[21],reg4[22],reg4[23],reg4[24],reg4[25],reg4[26],reg4[27],reg4[28],reg4[29],reg4[30],reg4[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[24:0]));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[10]),
        .Q(ip2bus_data_i_D1[10]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[11]),
        .Q(ip2bus_data_i_D1[11]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[12]),
        .Q(ip2bus_data_i_D1[12]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[13]),
        .Q(ip2bus_data_i_D1[13]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[14]),
        .Q(ip2bus_data_i_D1[14]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[15]),
        .Q(ip2bus_data_i_D1[15]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[16]),
        .Q(ip2bus_data_i_D1[16]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[17]),
        .Q(ip2bus_data_i_D1[17]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[18]),
        .Q(ip2bus_data_i_D1[18]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[19]),
        .Q(ip2bus_data_i_D1[19]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[20]),
        .Q(ip2bus_data_i_D1[20]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[21]),
        .Q(ip2bus_data_i_D1[21]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[22]),
        .Q(ip2bus_data_i_D1[22]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[23]),
        .Q(ip2bus_data_i_D1[23]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[24]),
        .Q(ip2bus_data_i_D1[24]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[25]),
        .Q(ip2bus_data_i_D1[25]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[26]),
        .Q(ip2bus_data_i_D1[26]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[27]),
        .Q(ip2bus_data_i_D1[27]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[28]),
        .Q(ip2bus_data_i_D1[28]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[29]),
        .Q(ip2bus_data_i_D1[29]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[7]),
        .Q(ip2bus_data_i_D1[7]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[8]),
        .Q(ip2bus_data_i_D1[8]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[9]),
        .Q(ip2bus_data_i_D1[9]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

module base_axi_gpio_0_1_axi_lite_ipif
   (p_6_in,
    p_17_in,
    p_18_in,
    p_19_in,
    p_20_in,
    bus2ip_rnw,
    bus2ip_cs,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    p_0_in106_in,
    Q,
    p_0_in108_in,
    gpio_reg_en,
    E,
    \Dual.gpio_OE_reg[0] ,
    \Dual.gpio2_Data_Out_reg[0] ,
    \Dual.gpio2_OE_reg[0] ,
    s_axi_wready,
    s_axi_arready,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    irpt_wrack,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ,
    intr_rd_ce_or_reduce,
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ,
    intr_wr_ce_or_reduce,
    ipif_glbl_irpt_enable_reg_reg,
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    reg1,
    reg2,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    reg3,
    reg4,
    p_1_in,
    \ip_irpt_enable_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[0] ,
    s_axi_wdata,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \ip2bus_data_i_D1_reg[0] );
  output p_6_in;
  output p_17_in;
  output p_18_in;
  output p_19_in;
  output p_20_in;
  output bus2ip_rnw;
  output [0:0]bus2ip_cs;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output p_0_in106_in;
  output [1:0]Q;
  output p_0_in108_in;
  output gpio_reg_en;
  output [0:0]E;
  output [0:0]\Dual.gpio_OE_reg[0] ;
  output [0:0]\Dual.gpio2_Data_Out_reg[0] ;
  output [0:0]\Dual.gpio2_OE_reg[0] ;
  output s_axi_wready;
  output s_axi_arready;
  output [25:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  output intr_rd_ce_or_reduce;
  output \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ;
  output intr_wr_ce_or_reduce;
  output ipif_glbl_irpt_enable_reg_reg;
  output \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ;
  output [25:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input [24:0]reg1;
  input [24:0]reg2;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [24:0]reg3;
  input [24:0]reg4;
  input p_1_in;
  input \ip_irpt_enable_reg_reg[1] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \ip_irpt_enable_reg_reg[0] ;
  input [0:0]s_axi_wdata;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [25:0]\ip2bus_data_i_D1_reg[0] ;

  wire Bus_RNW_reg;
  wire [25:0]D;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ;
  wire [0:0]\Dual.gpio2_Data_Out_reg[0] ;
  wire [0:0]\Dual.gpio2_OE_reg[0] ;
  wire [0:0]\Dual.gpio_OE_reg[0] ;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire GPIO_xferAck_i;
  wire \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  wire [1:0]Q;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [25:0]\ip2bus_data_i_D1_reg[0] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i_D1;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire \ip_irpt_enable_reg_reg[1] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_20_in;
  wire p_6_in;
  wire [24:0]reg1;
  wire [24:0]reg2;
  wire [24:0]reg3;
  wire [24:0]reg4;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [25:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [0:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  base_axi_gpio_0_1_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] (bus2ip_rnw),
        .\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 (bus2ip_cs),
        .\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_1 (\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .\Dual.gpio2_Data_Out_reg[0] (\Dual.gpio2_Data_Out_reg[0] ),
        .\Dual.gpio2_OE_reg[0] (\Dual.gpio2_OE_reg[0] ),
        .\Dual.gpio_OE_reg[0] (\Dual.gpio_OE_reg[0] ),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg (\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ),
        .\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg (\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ),
        .Q(Q),
        .bus2ip_reset(bus2ip_reset),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[0] (p_6_in),
        .\ip2bus_data_i_D1_reg[0]_0 (\ip2bus_data_i_D1_reg[0] ),
        .\ip2bus_data_i_D1_reg[31] (p_17_in),
        .\ip2bus_data_i_D1_reg[31]_0 (p_18_in),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .\ip_irpt_enable_reg_reg[0] (\ip_irpt_enable_reg_reg[0] ),
        .\ip_irpt_enable_reg_reg[1] (\ip_irpt_enable_reg_reg[1] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(Bus_RNW_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in106_in(p_0_in106_in),
        .p_0_in108_in(p_0_in108_in),
        .p_19_in(p_19_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .reg1(reg1),
        .reg2(reg2),
        .reg3(reg3),
        .reg4(reg4),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "base_axi_gpio_0_0,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module base_axi_gpio_0_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999901, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_1_FCLK_CLK1" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999901, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_1_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [24:0]gpio_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) output [24:0]gpio_io_o;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_T" *) output [24:0]gpio_io_t;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) input [24:0]gpio2_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) output [24:0]gpio2_io_o;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_T" *) output [24:0]gpio2_io_t;

  wire [24:0]gpio2_io_i;
  wire [24:0]gpio2_io_o;
  wire [24:0]gpio2_io_t;
  wire [24:0]gpio_io_i;
  wire [24:0]gpio_io_o;
  wire [24:0]gpio_io_t;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* C_ALL_INPUTS = "0" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "0" *) 
  (* C_DOUT_DEFAULT_2 = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPIO2_WIDTH = "25" *) 
  (* C_GPIO_WIDTH = "25" *) 
  (* C_INTERRUPT_PRESENT = "1" *) 
  (* C_IS_DUAL = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "-1" *) 
  (* C_TRI_DEFAULT_2 = "-1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  base_axi_gpio_0_1_axi_gpio U0
       (.gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(gpio_io_t),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module base_axi_gpio_0_1_cdc_sync
   (D,
    scndry_vect_out,
    Q,
    gpio_io_i,
    s_axi_aclk);
  output [24:0]D;
  output [24:0]scndry_vect_out;
  input [24:0]Q;
  input [24:0]gpio_io_i;
  input s_axi_aclk;

  wire [24:0]D;
  wire [24:0]Q;
  wire [24:0]gpio_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_11;
  wire s_level_out_bus_d1_cdc_to_12;
  wire s_level_out_bus_d1_cdc_to_13;
  wire s_level_out_bus_d1_cdc_to_14;
  wire s_level_out_bus_d1_cdc_to_15;
  wire s_level_out_bus_d1_cdc_to_16;
  wire s_level_out_bus_d1_cdc_to_17;
  wire s_level_out_bus_d1_cdc_to_18;
  wire s_level_out_bus_d1_cdc_to_19;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_20;
  wire s_level_out_bus_d1_cdc_to_21;
  wire s_level_out_bus_d1_cdc_to_22;
  wire s_level_out_bus_d1_cdc_to_23;
  wire s_level_out_bus_d1_cdc_to_24;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_11;
  wire s_level_out_bus_d2_12;
  wire s_level_out_bus_d2_13;
  wire s_level_out_bus_d2_14;
  wire s_level_out_bus_d2_15;
  wire s_level_out_bus_d2_16;
  wire s_level_out_bus_d2_17;
  wire s_level_out_bus_d2_18;
  wire s_level_out_bus_d2_19;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_20;
  wire s_level_out_bus_d2_21;
  wire s_level_out_bus_d2_22;
  wire s_level_out_bus_d2_23;
  wire s_level_out_bus_d2_24;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_11;
  wire s_level_out_bus_d3_12;
  wire s_level_out_bus_d3_13;
  wire s_level_out_bus_d3_14;
  wire s_level_out_bus_d3_15;
  wire s_level_out_bus_d3_16;
  wire s_level_out_bus_d3_17;
  wire s_level_out_bus_d3_18;
  wire s_level_out_bus_d3_19;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_20;
  wire s_level_out_bus_d3_21;
  wire s_level_out_bus_d3_22;
  wire s_level_out_bus_d3_23;
  wire s_level_out_bus_d3_24;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;
  wire [24:0]scndry_vect_out;

  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[0]_i_1 
       (.I0(scndry_vect_out[24]),
        .I1(Q[24]),
        .O(D[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[10]_i_1 
       (.I0(scndry_vect_out[14]),
        .I1(Q[14]),
        .O(D[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[11]_i_1 
       (.I0(scndry_vect_out[13]),
        .I1(Q[13]),
        .O(D[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[12]_i_1 
       (.I0(scndry_vect_out[12]),
        .I1(Q[12]),
        .O(D[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[13]_i_1 
       (.I0(scndry_vect_out[11]),
        .I1(Q[11]),
        .O(D[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[14]_i_1 
       (.I0(scndry_vect_out[10]),
        .I1(Q[10]),
        .O(D[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[15]_i_1 
       (.I0(scndry_vect_out[9]),
        .I1(Q[9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[16]_i_1 
       (.I0(scndry_vect_out[8]),
        .I1(Q[8]),
        .O(D[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[17]_i_1 
       (.I0(scndry_vect_out[7]),
        .I1(Q[7]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[18]_i_1 
       (.I0(scndry_vect_out[6]),
        .I1(Q[6]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[19]_i_1 
       (.I0(scndry_vect_out[5]),
        .I1(Q[5]),
        .O(D[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[1]_i_1 
       (.I0(scndry_vect_out[23]),
        .I1(Q[23]),
        .O(D[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[20]_i_1 
       (.I0(scndry_vect_out[4]),
        .I1(Q[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[21]_i_1 
       (.I0(scndry_vect_out[3]),
        .I1(Q[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[22]_i_1 
       (.I0(scndry_vect_out[2]),
        .I1(Q[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[23]_i_1 
       (.I0(scndry_vect_out[1]),
        .I1(Q[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[24]_i_1 
       (.I0(scndry_vect_out[0]),
        .I1(Q[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[2]_i_1 
       (.I0(scndry_vect_out[22]),
        .I1(Q[22]),
        .O(D[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[3]_i_1 
       (.I0(scndry_vect_out[21]),
        .I1(Q[21]),
        .O(D[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[4]_i_1 
       (.I0(scndry_vect_out[20]),
        .I1(Q[20]),
        .O(D[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[5]_i_1 
       (.I0(scndry_vect_out[19]),
        .I1(Q[19]),
        .O(D[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[6]_i_1 
       (.I0(scndry_vect_out[18]),
        .I1(Q[18]),
        .O(D[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[7]_i_1 
       (.I0(scndry_vect_out[17]),
        .I1(Q[17]),
        .O(D[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[8]_i_1 
       (.I0(scndry_vect_out[16]),
        .I1(Q[16]),
        .O(D[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[9]_i_1 
       (.I0(scndry_vect_out[15]),
        .I1(Q[15]),
        .O(D[15]));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_11),
        .Q(s_level_out_bus_d2_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_12),
        .Q(s_level_out_bus_d2_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_13),
        .Q(s_level_out_bus_d2_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_14),
        .Q(s_level_out_bus_d2_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_15),
        .Q(s_level_out_bus_d2_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_16),
        .Q(s_level_out_bus_d2_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_17),
        .Q(s_level_out_bus_d2_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_18),
        .Q(s_level_out_bus_d2_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_19),
        .Q(s_level_out_bus_d2_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_20),
        .Q(s_level_out_bus_d2_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_21),
        .Q(s_level_out_bus_d2_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_22),
        .Q(s_level_out_bus_d2_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_23),
        .Q(s_level_out_bus_d2_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_24),
        .Q(s_level_out_bus_d2_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_11),
        .Q(s_level_out_bus_d3_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_12),
        .Q(s_level_out_bus_d3_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_13),
        .Q(s_level_out_bus_d3_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_14),
        .Q(s_level_out_bus_d3_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_15),
        .Q(s_level_out_bus_d3_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_16),
        .Q(s_level_out_bus_d3_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_17),
        .Q(s_level_out_bus_d3_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_18),
        .Q(s_level_out_bus_d3_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_19),
        .Q(s_level_out_bus_d3_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_20),
        .Q(s_level_out_bus_d3_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_21),
        .Q(s_level_out_bus_d3_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_22),
        .Q(s_level_out_bus_d3_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_23),
        .Q(s_level_out_bus_d3_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_24),
        .Q(s_level_out_bus_d3_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_11),
        .Q(scndry_vect_out[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_12),
        .Q(scndry_vect_out[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_13),
        .Q(scndry_vect_out[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_14),
        .Q(scndry_vect_out[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_15),
        .Q(scndry_vect_out[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_16),
        .Q(scndry_vect_out[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_17),
        .Q(scndry_vect_out[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_18),
        .Q(scndry_vect_out[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_19),
        .Q(scndry_vect_out[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_20),
        .Q(scndry_vect_out[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_21),
        .Q(scndry_vect_out[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_22),
        .Q(scndry_vect_out[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_23),
        .Q(scndry_vect_out[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_24),
        .Q(scndry_vect_out[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[11]),
        .Q(s_level_out_bus_d1_cdc_to_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[12]),
        .Q(s_level_out_bus_d1_cdc_to_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[13]),
        .Q(s_level_out_bus_d1_cdc_to_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[14]),
        .Q(s_level_out_bus_d1_cdc_to_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[15]),
        .Q(s_level_out_bus_d1_cdc_to_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[16]),
        .Q(s_level_out_bus_d1_cdc_to_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[17]),
        .Q(s_level_out_bus_d1_cdc_to_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[18]),
        .Q(s_level_out_bus_d1_cdc_to_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[19]),
        .Q(s_level_out_bus_d1_cdc_to_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[20]),
        .Q(s_level_out_bus_d1_cdc_to_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[21]),
        .Q(s_level_out_bus_d1_cdc_to_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[22]),
        .Q(s_level_out_bus_d1_cdc_to_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[23]),
        .Q(s_level_out_bus_d1_cdc_to_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[24]),
        .Q(s_level_out_bus_d1_cdc_to_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module base_axi_gpio_0_1_cdc_sync_0
   (D,
    scndry_vect_out,
    Q,
    gpio2_io_i,
    s_axi_aclk);
  output [24:0]D;
  output [24:0]scndry_vect_out;
  input [24:0]Q;
  input [24:0]gpio2_io_i;
  input s_axi_aclk;

  wire [24:0]D;
  wire [24:0]Q;
  wire [24:0]gpio2_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_11;
  wire s_level_out_bus_d1_cdc_to_12;
  wire s_level_out_bus_d1_cdc_to_13;
  wire s_level_out_bus_d1_cdc_to_14;
  wire s_level_out_bus_d1_cdc_to_15;
  wire s_level_out_bus_d1_cdc_to_16;
  wire s_level_out_bus_d1_cdc_to_17;
  wire s_level_out_bus_d1_cdc_to_18;
  wire s_level_out_bus_d1_cdc_to_19;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_20;
  wire s_level_out_bus_d1_cdc_to_21;
  wire s_level_out_bus_d1_cdc_to_22;
  wire s_level_out_bus_d1_cdc_to_23;
  wire s_level_out_bus_d1_cdc_to_24;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_11;
  wire s_level_out_bus_d2_12;
  wire s_level_out_bus_d2_13;
  wire s_level_out_bus_d2_14;
  wire s_level_out_bus_d2_15;
  wire s_level_out_bus_d2_16;
  wire s_level_out_bus_d2_17;
  wire s_level_out_bus_d2_18;
  wire s_level_out_bus_d2_19;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_20;
  wire s_level_out_bus_d2_21;
  wire s_level_out_bus_d2_22;
  wire s_level_out_bus_d2_23;
  wire s_level_out_bus_d2_24;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_11;
  wire s_level_out_bus_d3_12;
  wire s_level_out_bus_d3_13;
  wire s_level_out_bus_d3_14;
  wire s_level_out_bus_d3_15;
  wire s_level_out_bus_d3_16;
  wire s_level_out_bus_d3_17;
  wire s_level_out_bus_d3_18;
  wire s_level_out_bus_d3_19;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_20;
  wire s_level_out_bus_d3_21;
  wire s_level_out_bus_d3_22;
  wire s_level_out_bus_d3_23;
  wire s_level_out_bus_d3_24;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;
  wire [24:0]scndry_vect_out;

  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[0]_i_1 
       (.I0(scndry_vect_out[24]),
        .I1(Q[24]),
        .O(D[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[10]_i_1 
       (.I0(scndry_vect_out[14]),
        .I1(Q[14]),
        .O(D[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[11]_i_1 
       (.I0(scndry_vect_out[13]),
        .I1(Q[13]),
        .O(D[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[12]_i_1 
       (.I0(scndry_vect_out[12]),
        .I1(Q[12]),
        .O(D[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[13]_i_1 
       (.I0(scndry_vect_out[11]),
        .I1(Q[11]),
        .O(D[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[14]_i_1 
       (.I0(scndry_vect_out[10]),
        .I1(Q[10]),
        .O(D[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[15]_i_1 
       (.I0(scndry_vect_out[9]),
        .I1(Q[9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[16]_i_1 
       (.I0(scndry_vect_out[8]),
        .I1(Q[8]),
        .O(D[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[17]_i_1 
       (.I0(scndry_vect_out[7]),
        .I1(Q[7]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[18]_i_1 
       (.I0(scndry_vect_out[6]),
        .I1(Q[6]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[19]_i_1 
       (.I0(scndry_vect_out[5]),
        .I1(Q[5]),
        .O(D[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[1]_i_1 
       (.I0(scndry_vect_out[23]),
        .I1(Q[23]),
        .O(D[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[20]_i_1 
       (.I0(scndry_vect_out[4]),
        .I1(Q[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[21]_i_1 
       (.I0(scndry_vect_out[3]),
        .I1(Q[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[22]_i_1 
       (.I0(scndry_vect_out[2]),
        .I1(Q[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[23]_i_1 
       (.I0(scndry_vect_out[1]),
        .I1(Q[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[24]_i_1 
       (.I0(scndry_vect_out[0]),
        .I1(Q[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[2]_i_1 
       (.I0(scndry_vect_out[22]),
        .I1(Q[22]),
        .O(D[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[3]_i_1 
       (.I0(scndry_vect_out[21]),
        .I1(Q[21]),
        .O(D[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[4]_i_1 
       (.I0(scndry_vect_out[20]),
        .I1(Q[20]),
        .O(D[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[5]_i_1 
       (.I0(scndry_vect_out[19]),
        .I1(Q[19]),
        .O(D[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[6]_i_1 
       (.I0(scndry_vect_out[18]),
        .I1(Q[18]),
        .O(D[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[7]_i_1 
       (.I0(scndry_vect_out[17]),
        .I1(Q[17]),
        .O(D[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[8]_i_1 
       (.I0(scndry_vect_out[16]),
        .I1(Q[16]),
        .O(D[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[9]_i_1 
       (.I0(scndry_vect_out[15]),
        .I1(Q[15]),
        .O(D[15]));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_11),
        .Q(s_level_out_bus_d2_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_12),
        .Q(s_level_out_bus_d2_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_13),
        .Q(s_level_out_bus_d2_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_14),
        .Q(s_level_out_bus_d2_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_15),
        .Q(s_level_out_bus_d2_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_16),
        .Q(s_level_out_bus_d2_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_17),
        .Q(s_level_out_bus_d2_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_18),
        .Q(s_level_out_bus_d2_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_19),
        .Q(s_level_out_bus_d2_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_20),
        .Q(s_level_out_bus_d2_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_21),
        .Q(s_level_out_bus_d2_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_22),
        .Q(s_level_out_bus_d2_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_23),
        .Q(s_level_out_bus_d2_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_24),
        .Q(s_level_out_bus_d2_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_11),
        .Q(s_level_out_bus_d3_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_12),
        .Q(s_level_out_bus_d3_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_13),
        .Q(s_level_out_bus_d3_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_14),
        .Q(s_level_out_bus_d3_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_15),
        .Q(s_level_out_bus_d3_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_16),
        .Q(s_level_out_bus_d3_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_17),
        .Q(s_level_out_bus_d3_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_18),
        .Q(s_level_out_bus_d3_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_19),
        .Q(s_level_out_bus_d3_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_20),
        .Q(s_level_out_bus_d3_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_21),
        .Q(s_level_out_bus_d3_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_22),
        .Q(s_level_out_bus_d3_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_23),
        .Q(s_level_out_bus_d3_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_24),
        .Q(s_level_out_bus_d3_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_11),
        .Q(scndry_vect_out[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_12),
        .Q(scndry_vect_out[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_13),
        .Q(scndry_vect_out[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_14),
        .Q(scndry_vect_out[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_15),
        .Q(scndry_vect_out[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_16),
        .Q(scndry_vect_out[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_17),
        .Q(scndry_vect_out[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_18),
        .Q(scndry_vect_out[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_19),
        .Q(scndry_vect_out[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_20),
        .Q(scndry_vect_out[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_21),
        .Q(scndry_vect_out[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_22),
        .Q(scndry_vect_out[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_23),
        .Q(scndry_vect_out[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_24),
        .Q(scndry_vect_out[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[11]),
        .Q(s_level_out_bus_d1_cdc_to_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[12]),
        .Q(s_level_out_bus_d1_cdc_to_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[13]),
        .Q(s_level_out_bus_d1_cdc_to_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[14]),
        .Q(s_level_out_bus_d1_cdc_to_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[15]),
        .Q(s_level_out_bus_d1_cdc_to_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[16]),
        .Q(s_level_out_bus_d1_cdc_to_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[17]),
        .Q(s_level_out_bus_d1_cdc_to_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[18]),
        .Q(s_level_out_bus_d1_cdc_to_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[19]),
        .Q(s_level_out_bus_d1_cdc_to_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[20]),
        .Q(s_level_out_bus_d1_cdc_to_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[21]),
        .Q(s_level_out_bus_d1_cdc_to_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[22]),
        .Q(s_level_out_bus_d1_cdc_to_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[23]),
        .Q(s_level_out_bus_d1_cdc_to_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[24]),
        .Q(s_level_out_bus_d1_cdc_to_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

module base_axi_gpio_0_1_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in,
    irpt_rdack_d1,
    ipif_glbl_irpt_enable_reg,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    IP2INTC_Irpt_i,
    \ip_irpt_enable_reg_reg[1]_0 ,
    \ip_irpt_enable_reg_reg[0]_0 ,
    bus2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    GPIO_intr,
    GPIO2_intr,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ,
    GPIO_xferAck_i,
    bus2ip_rnw,
    ip2Bus_WrAck_intr_reg_hole,
    ip2Bus_RdAck_intr_reg_hole,
    irpt_wrack_d1_reg_0,
    s_axi_wdata,
    p_6_in,
    Bus_RNW_reg);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in;
  output irpt_rdack_d1;
  output ipif_glbl_irpt_enable_reg;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output IP2INTC_Irpt_i;
  output \ip_irpt_enable_reg_reg[1]_0 ;
  output \ip_irpt_enable_reg_reg[0]_0 ;
  input bus2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input GPIO_intr;
  input GPIO2_intr;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  input GPIO_xferAck_i;
  input bus2ip_rnw;
  input ip2Bus_WrAck_intr_reg_hole;
  input ip2Bus_RdAck_intr_reg_hole;
  input irpt_wrack_d1_reg_0;
  input [1:0]s_axi_wdata;
  input p_6_in;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire IP2INTC_Irpt_i;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire \ip_irpt_enable_reg[0]_i_1_n_0 ;
  wire \ip_irpt_enable_reg[1]_i_1_n_0 ;
  wire \ip_irpt_enable_reg_reg[0]_0 ;
  wire \ip_irpt_enable_reg_reg[1]_0 ;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_dly1;
  wire irpt_dly2;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg_0;
  wire p_1_in;
  wire p_6_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_intr),
        .Q(irpt_dly1),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_dly1),
        .Q(irpt_dly2),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO2_intr),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(bus2ip_reset));
  LUT5 #(
    .INIT(32'hF44FF4F4)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_dly2),
        .I1(irpt_dly1),
        .I2(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I3(irpt_wrack_d1_reg_0),
        .I4(s_axi_wdata[0]),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hF44FF4F4)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in),
        .I3(irpt_wrack_d1_reg_0),
        .I4(s_axi_wdata[1]),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \INTR_CTRLR_GEN.ip2intc_irpt_i_1 
       (.I0(\ip_irpt_enable_reg_reg[1]_0 ),
        .I1(p_1_in),
        .I2(ipif_glbl_irpt_enable_reg),
        .I3(\ip_irpt_enable_reg_reg[0]_0 ),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(IP2INTC_Irpt_i));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(intr2bus_rdack),
        .R(bus2ip_reset));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr2bus_wrack),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFFEA)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(intr2bus_rdack),
        .I1(GPIO_xferAck_i),
        .I2(bus2ip_rnw),
        .I3(ip2Bus_RdAck_intr_reg_hole),
        .O(ip2bus_rdack_i));
  LUT4 #(
    .INIT(16'hFFAE)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(intr2bus_wrack),
        .I1(GPIO_xferAck_i),
        .I2(bus2ip_rnw),
        .I3(ip2Bus_WrAck_intr_reg_hole),
        .O(ip2bus_wrack_i));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(\ip_irpt_enable_reg_reg[0]_0 ),
        .O(\ip_irpt_enable_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(\ip_irpt_enable_reg_reg[1]_0 ),
        .O(\ip_irpt_enable_reg[1]_i_1_n_0 ));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ip_irpt_enable_reg[0]_i_1_n_0 ),
        .Q(\ip_irpt_enable_reg_reg[0]_0 ),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ip_irpt_enable_reg[1]_i_1_n_0 ),
        .Q(\ip_irpt_enable_reg_reg[1]_0 ),
        .R(bus2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(bus2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(bus2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(bus2ip_reset));
endmodule

module base_axi_gpio_0_1_slave_attachment
   (\ip2bus_data_i_D1_reg[0] ,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[31]_0 ,
    p_19_in,
    p_20_in,
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ,
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ,
    ipif_glbl_irpt_enable_reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    p_0_in106_in,
    Q,
    p_0_in108_in,
    gpio_reg_en,
    E,
    \Dual.gpio_OE_reg[0] ,
    \Dual.gpio2_Data_Out_reg[0] ,
    \Dual.gpio2_OE_reg[0] ,
    s_axi_wready,
    s_axi_arready,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    irpt_wrack,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ,
    intr_rd_ce_or_reduce,
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ,
    intr_wr_ce_or_reduce,
    ipif_glbl_irpt_enable_reg_reg_0,
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_1 ,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    reg1,
    reg2,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    reg3,
    reg4,
    p_1_in,
    \ip_irpt_enable_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[0] ,
    s_axi_wdata,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \ip2bus_data_i_D1_reg[0]_0 );
  output \ip2bus_data_i_D1_reg[0] ;
  output \ip2bus_data_i_D1_reg[31] ;
  output \ip2bus_data_i_D1_reg[31]_0 ;
  output p_19_in;
  output p_20_in;
  output \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ;
  output \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ;
  output ipif_glbl_irpt_enable_reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output p_0_in106_in;
  output [1:0]Q;
  output p_0_in108_in;
  output gpio_reg_en;
  output [0:0]E;
  output [0:0]\Dual.gpio_OE_reg[0] ;
  output [0:0]\Dual.gpio2_Data_Out_reg[0] ;
  output [0:0]\Dual.gpio2_OE_reg[0] ;
  output s_axi_wready;
  output s_axi_arready;
  output [25:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  output intr_rd_ce_or_reduce;
  output \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ;
  output intr_wr_ce_or_reduce;
  output ipif_glbl_irpt_enable_reg_reg_0;
  output \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_1 ;
  output [25:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input [24:0]reg1;
  input [24:0]reg2;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [24:0]reg3;
  input [24:0]reg4;
  input p_1_in;
  input \ip_irpt_enable_reg_reg[1] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \ip_irpt_enable_reg_reg[0] ;
  input [0:0]s_axi_wdata;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [25:0]\ip2bus_data_i_D1_reg[0]_0 ;

  wire [25:0]D;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_1 ;
  wire [0:0]\Dual.gpio2_Data_Out_reg[0] ;
  wire [0:0]\Dual.gpio2_OE_reg[0] ;
  wire [0:0]\Dual.gpio_OE_reg[0] ;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  wire [1:0]Q;
  wire [0:4]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire bus2ip_reset;
  wire clear;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1_reg[0] ;
  wire [25:0]\ip2bus_data_i_D1_reg[0]_0 ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire \ip2bus_data_i_D1_reg[31]_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i_D1;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire \ip_irpt_enable_reg_reg[1] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire [1:0]p_0_out__0;
  wire p_19_in;
  wire p_1_in;
  wire p_20_in;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [24:0]reg1;
  wire [24:0]reg2;
  wire [24:0]reg3;
  wire [24:0]reg4;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  (* RTL_KEEP = "yes" *) wire s_axi_bresp_i;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [25:0]s_axi_rdata;
  wire s_axi_rready;
  (* RTL_KEEP = "yes" *) wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [0:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_arready),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(s_axi_wready),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(s_axi_arready),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  base_axi_gpio_0_1_address_decoder I_DECODER
       (.D(D),
        .\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] (\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 ),
        .\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_0 (\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7]_1 ),
        .\Dual.gpio2_Data_Out_reg[0] (\Dual.gpio2_Data_Out_reg[0] ),
        .\Dual.gpio2_OE_reg[0] (\Dual.gpio2_OE_reg[0] ),
        .\Dual.gpio_OE_reg[0] (\Dual.gpio_OE_reg[0] ),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg (\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg ),
        .\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg (\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ),
        .Q(start2),
        .\bus2ip_addr_i_reg[8] ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2],bus2ip_addr[3],bus2ip_addr[4],Q}),
        .bus2ip_rnw_i_reg(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[0] (\ip2bus_data_i_D1_reg[0] ),
        .\ip2bus_data_i_D1_reg[31] (\ip2bus_data_i_D1_reg[31] ),
        .\ip2bus_data_i_D1_reg[31]_0 (\ip2bus_data_i_D1_reg[31]_0 ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .\ip_irpt_enable_reg_reg[0] (\ip_irpt_enable_reg_reg[0] ),
        .\ip_irpt_enable_reg_reg[1] (\ip_irpt_enable_reg_reg[1] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg_0),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .is_read_reg(is_read_reg_n_0),
        .is_write_reg(is_write_reg_n_0),
        .p_0_in106_in(p_0_in106_in),
        .p_0_in108_in(p_0_in108_in),
        .p_19_in(p_19_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .reg1(reg1),
        .reg2(reg2),
        .reg3(reg3),
        .reg4(reg4),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(bus2ip_addr[4]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(bus2ip_addr[3]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(bus2ip_addr[2]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(bus2ip_addr[1]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(bus2ip_addr[0]),
        .R(bus2ip_reset));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[7] ),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_wready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [25]),
        .Q(s_axi_rdata[25]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_arready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(s_axi_wready),
        .O(p_0_out__0[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(s_axi_arready),
        .O(p_0_out__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out__0[0]),
        .Q(state[0]),
        .R(bus2ip_reset));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out__0[1]),
        .Q(state[1]),
        .R(bus2ip_reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
