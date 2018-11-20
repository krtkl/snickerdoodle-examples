//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Mar 22 15:35:21 2018
//Host        : WIN-MJ2I8SI0RJV running 64-bit major release  (build 9200)
//Command     : generate_target base_wrapper.bd
//Design      : base_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module base_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO0_tri_io,
    GPIO1_tri_io,
    GPIO2_tri_io,
    GPIO3_tri_io,
    GPIO4_tri_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [24:0]GPIO0_tri_io;
  inout [24:0]GPIO1_tri_io;
  inout [24:0]GPIO2_tri_io;
  inout [24:0]GPIO3_tri_io;
  inout [24:0]GPIO4_tri_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]GPIO0_tri_i_0;
  wire [1:1]GPIO0_tri_i_1;
  wire [10:10]GPIO0_tri_i_10;
  wire [11:11]GPIO0_tri_i_11;
  wire [12:12]GPIO0_tri_i_12;
  wire [13:13]GPIO0_tri_i_13;
  wire [14:14]GPIO0_tri_i_14;
  wire [15:15]GPIO0_tri_i_15;
  wire [16:16]GPIO0_tri_i_16;
  wire [17:17]GPIO0_tri_i_17;
  wire [18:18]GPIO0_tri_i_18;
  wire [19:19]GPIO0_tri_i_19;
  wire [2:2]GPIO0_tri_i_2;
  wire [20:20]GPIO0_tri_i_20;
  wire [21:21]GPIO0_tri_i_21;
  wire [22:22]GPIO0_tri_i_22;
  wire [23:23]GPIO0_tri_i_23;
  wire [24:24]GPIO0_tri_i_24;
  wire [3:3]GPIO0_tri_i_3;
  wire [4:4]GPIO0_tri_i_4;
  wire [5:5]GPIO0_tri_i_5;
  wire [6:6]GPIO0_tri_i_6;
  wire [7:7]GPIO0_tri_i_7;
  wire [8:8]GPIO0_tri_i_8;
  wire [9:9]GPIO0_tri_i_9;
  wire [0:0]GPIO0_tri_io_0;
  wire [1:1]GPIO0_tri_io_1;
  wire [10:10]GPIO0_tri_io_10;
  wire [11:11]GPIO0_tri_io_11;
  wire [12:12]GPIO0_tri_io_12;
  wire [13:13]GPIO0_tri_io_13;
  wire [14:14]GPIO0_tri_io_14;
  wire [15:15]GPIO0_tri_io_15;
  wire [16:16]GPIO0_tri_io_16;
  wire [17:17]GPIO0_tri_io_17;
  wire [18:18]GPIO0_tri_io_18;
  wire [19:19]GPIO0_tri_io_19;
  wire [2:2]GPIO0_tri_io_2;
  wire [20:20]GPIO0_tri_io_20;
  wire [21:21]GPIO0_tri_io_21;
  wire [22:22]GPIO0_tri_io_22;
  wire [23:23]GPIO0_tri_io_23;
  wire [24:24]GPIO0_tri_io_24;
  wire [3:3]GPIO0_tri_io_3;
  wire [4:4]GPIO0_tri_io_4;
  wire [5:5]GPIO0_tri_io_5;
  wire [6:6]GPIO0_tri_io_6;
  wire [7:7]GPIO0_tri_io_7;
  wire [8:8]GPIO0_tri_io_8;
  wire [9:9]GPIO0_tri_io_9;
  wire [0:0]GPIO0_tri_o_0;
  wire [1:1]GPIO0_tri_o_1;
  wire [10:10]GPIO0_tri_o_10;
  wire [11:11]GPIO0_tri_o_11;
  wire [12:12]GPIO0_tri_o_12;
  wire [13:13]GPIO0_tri_o_13;
  wire [14:14]GPIO0_tri_o_14;
  wire [15:15]GPIO0_tri_o_15;
  wire [16:16]GPIO0_tri_o_16;
  wire [17:17]GPIO0_tri_o_17;
  wire [18:18]GPIO0_tri_o_18;
  wire [19:19]GPIO0_tri_o_19;
  wire [2:2]GPIO0_tri_o_2;
  wire [20:20]GPIO0_tri_o_20;
  wire [21:21]GPIO0_tri_o_21;
  wire [22:22]GPIO0_tri_o_22;
  wire [23:23]GPIO0_tri_o_23;
  wire [24:24]GPIO0_tri_o_24;
  wire [3:3]GPIO0_tri_o_3;
  wire [4:4]GPIO0_tri_o_4;
  wire [5:5]GPIO0_tri_o_5;
  wire [6:6]GPIO0_tri_o_6;
  wire [7:7]GPIO0_tri_o_7;
  wire [8:8]GPIO0_tri_o_8;
  wire [9:9]GPIO0_tri_o_9;
  wire [0:0]GPIO0_tri_t_0;
  wire [1:1]GPIO0_tri_t_1;
  wire [10:10]GPIO0_tri_t_10;
  wire [11:11]GPIO0_tri_t_11;
  wire [12:12]GPIO0_tri_t_12;
  wire [13:13]GPIO0_tri_t_13;
  wire [14:14]GPIO0_tri_t_14;
  wire [15:15]GPIO0_tri_t_15;
  wire [16:16]GPIO0_tri_t_16;
  wire [17:17]GPIO0_tri_t_17;
  wire [18:18]GPIO0_tri_t_18;
  wire [19:19]GPIO0_tri_t_19;
  wire [2:2]GPIO0_tri_t_2;
  wire [20:20]GPIO0_tri_t_20;
  wire [21:21]GPIO0_tri_t_21;
  wire [22:22]GPIO0_tri_t_22;
  wire [23:23]GPIO0_tri_t_23;
  wire [24:24]GPIO0_tri_t_24;
  wire [3:3]GPIO0_tri_t_3;
  wire [4:4]GPIO0_tri_t_4;
  wire [5:5]GPIO0_tri_t_5;
  wire [6:6]GPIO0_tri_t_6;
  wire [7:7]GPIO0_tri_t_7;
  wire [8:8]GPIO0_tri_t_8;
  wire [9:9]GPIO0_tri_t_9;
  wire [0:0]GPIO1_tri_i_0;
  wire [1:1]GPIO1_tri_i_1;
  wire [10:10]GPIO1_tri_i_10;
  wire [11:11]GPIO1_tri_i_11;
  wire [12:12]GPIO1_tri_i_12;
  wire [13:13]GPIO1_tri_i_13;
  wire [14:14]GPIO1_tri_i_14;
  wire [15:15]GPIO1_tri_i_15;
  wire [16:16]GPIO1_tri_i_16;
  wire [17:17]GPIO1_tri_i_17;
  wire [18:18]GPIO1_tri_i_18;
  wire [19:19]GPIO1_tri_i_19;
  wire [2:2]GPIO1_tri_i_2;
  wire [20:20]GPIO1_tri_i_20;
  wire [21:21]GPIO1_tri_i_21;
  wire [22:22]GPIO1_tri_i_22;
  wire [23:23]GPIO1_tri_i_23;
  wire [24:24]GPIO1_tri_i_24;
  wire [3:3]GPIO1_tri_i_3;
  wire [4:4]GPIO1_tri_i_4;
  wire [5:5]GPIO1_tri_i_5;
  wire [6:6]GPIO1_tri_i_6;
  wire [7:7]GPIO1_tri_i_7;
  wire [8:8]GPIO1_tri_i_8;
  wire [9:9]GPIO1_tri_i_9;
  wire [0:0]GPIO1_tri_io_0;
  wire [1:1]GPIO1_tri_io_1;
  wire [10:10]GPIO1_tri_io_10;
  wire [11:11]GPIO1_tri_io_11;
  wire [12:12]GPIO1_tri_io_12;
  wire [13:13]GPIO1_tri_io_13;
  wire [14:14]GPIO1_tri_io_14;
  wire [15:15]GPIO1_tri_io_15;
  wire [16:16]GPIO1_tri_io_16;
  wire [17:17]GPIO1_tri_io_17;
  wire [18:18]GPIO1_tri_io_18;
  wire [19:19]GPIO1_tri_io_19;
  wire [2:2]GPIO1_tri_io_2;
  wire [20:20]GPIO1_tri_io_20;
  wire [21:21]GPIO1_tri_io_21;
  wire [22:22]GPIO1_tri_io_22;
  wire [23:23]GPIO1_tri_io_23;
  wire [24:24]GPIO1_tri_io_24;
  wire [3:3]GPIO1_tri_io_3;
  wire [4:4]GPIO1_tri_io_4;
  wire [5:5]GPIO1_tri_io_5;
  wire [6:6]GPIO1_tri_io_6;
  wire [7:7]GPIO1_tri_io_7;
  wire [8:8]GPIO1_tri_io_8;
  wire [9:9]GPIO1_tri_io_9;
  wire [0:0]GPIO1_tri_o_0;
  wire [1:1]GPIO1_tri_o_1;
  wire [10:10]GPIO1_tri_o_10;
  wire [11:11]GPIO1_tri_o_11;
  wire [12:12]GPIO1_tri_o_12;
  wire [13:13]GPIO1_tri_o_13;
  wire [14:14]GPIO1_tri_o_14;
  wire [15:15]GPIO1_tri_o_15;
  wire [16:16]GPIO1_tri_o_16;
  wire [17:17]GPIO1_tri_o_17;
  wire [18:18]GPIO1_tri_o_18;
  wire [19:19]GPIO1_tri_o_19;
  wire [2:2]GPIO1_tri_o_2;
  wire [20:20]GPIO1_tri_o_20;
  wire [21:21]GPIO1_tri_o_21;
  wire [22:22]GPIO1_tri_o_22;
  wire [23:23]GPIO1_tri_o_23;
  wire [24:24]GPIO1_tri_o_24;
  wire [3:3]GPIO1_tri_o_3;
  wire [4:4]GPIO1_tri_o_4;
  wire [5:5]GPIO1_tri_o_5;
  wire [6:6]GPIO1_tri_o_6;
  wire [7:7]GPIO1_tri_o_7;
  wire [8:8]GPIO1_tri_o_8;
  wire [9:9]GPIO1_tri_o_9;
  wire [0:0]GPIO1_tri_t_0;
  wire [1:1]GPIO1_tri_t_1;
  wire [10:10]GPIO1_tri_t_10;
  wire [11:11]GPIO1_tri_t_11;
  wire [12:12]GPIO1_tri_t_12;
  wire [13:13]GPIO1_tri_t_13;
  wire [14:14]GPIO1_tri_t_14;
  wire [15:15]GPIO1_tri_t_15;
  wire [16:16]GPIO1_tri_t_16;
  wire [17:17]GPIO1_tri_t_17;
  wire [18:18]GPIO1_tri_t_18;
  wire [19:19]GPIO1_tri_t_19;
  wire [2:2]GPIO1_tri_t_2;
  wire [20:20]GPIO1_tri_t_20;
  wire [21:21]GPIO1_tri_t_21;
  wire [22:22]GPIO1_tri_t_22;
  wire [23:23]GPIO1_tri_t_23;
  wire [24:24]GPIO1_tri_t_24;
  wire [3:3]GPIO1_tri_t_3;
  wire [4:4]GPIO1_tri_t_4;
  wire [5:5]GPIO1_tri_t_5;
  wire [6:6]GPIO1_tri_t_6;
  wire [7:7]GPIO1_tri_t_7;
  wire [8:8]GPIO1_tri_t_8;
  wire [9:9]GPIO1_tri_t_9;
  wire [0:0]GPIO2_tri_i_0;
  wire [1:1]GPIO2_tri_i_1;
  wire [10:10]GPIO2_tri_i_10;
  wire [11:11]GPIO2_tri_i_11;
  wire [12:12]GPIO2_tri_i_12;
  wire [13:13]GPIO2_tri_i_13;
  wire [14:14]GPIO2_tri_i_14;
  wire [15:15]GPIO2_tri_i_15;
  wire [16:16]GPIO2_tri_i_16;
  wire [17:17]GPIO2_tri_i_17;
  wire [18:18]GPIO2_tri_i_18;
  wire [19:19]GPIO2_tri_i_19;
  wire [2:2]GPIO2_tri_i_2;
  wire [20:20]GPIO2_tri_i_20;
  wire [21:21]GPIO2_tri_i_21;
  wire [22:22]GPIO2_tri_i_22;
  wire [23:23]GPIO2_tri_i_23;
  wire [24:24]GPIO2_tri_i_24;
  wire [3:3]GPIO2_tri_i_3;
  wire [4:4]GPIO2_tri_i_4;
  wire [5:5]GPIO2_tri_i_5;
  wire [6:6]GPIO2_tri_i_6;
  wire [7:7]GPIO2_tri_i_7;
  wire [8:8]GPIO2_tri_i_8;
  wire [9:9]GPIO2_tri_i_9;
  wire [0:0]GPIO2_tri_io_0;
  wire [1:1]GPIO2_tri_io_1;
  wire [10:10]GPIO2_tri_io_10;
  wire [11:11]GPIO2_tri_io_11;
  wire [12:12]GPIO2_tri_io_12;
  wire [13:13]GPIO2_tri_io_13;
  wire [14:14]GPIO2_tri_io_14;
  wire [15:15]GPIO2_tri_io_15;
  wire [16:16]GPIO2_tri_io_16;
  wire [17:17]GPIO2_tri_io_17;
  wire [18:18]GPIO2_tri_io_18;
  wire [19:19]GPIO2_tri_io_19;
  wire [2:2]GPIO2_tri_io_2;
  wire [20:20]GPIO2_tri_io_20;
  wire [21:21]GPIO2_tri_io_21;
  wire [22:22]GPIO2_tri_io_22;
  wire [23:23]GPIO2_tri_io_23;
  wire [24:24]GPIO2_tri_io_24;
  wire [3:3]GPIO2_tri_io_3;
  wire [4:4]GPIO2_tri_io_4;
  wire [5:5]GPIO2_tri_io_5;
  wire [6:6]GPIO2_tri_io_6;
  wire [7:7]GPIO2_tri_io_7;
  wire [8:8]GPIO2_tri_io_8;
  wire [9:9]GPIO2_tri_io_9;
  wire [0:0]GPIO2_tri_o_0;
  wire [1:1]GPIO2_tri_o_1;
  wire [10:10]GPIO2_tri_o_10;
  wire [11:11]GPIO2_tri_o_11;
  wire [12:12]GPIO2_tri_o_12;
  wire [13:13]GPIO2_tri_o_13;
  wire [14:14]GPIO2_tri_o_14;
  wire [15:15]GPIO2_tri_o_15;
  wire [16:16]GPIO2_tri_o_16;
  wire [17:17]GPIO2_tri_o_17;
  wire [18:18]GPIO2_tri_o_18;
  wire [19:19]GPIO2_tri_o_19;
  wire [2:2]GPIO2_tri_o_2;
  wire [20:20]GPIO2_tri_o_20;
  wire [21:21]GPIO2_tri_o_21;
  wire [22:22]GPIO2_tri_o_22;
  wire [23:23]GPIO2_tri_o_23;
  wire [24:24]GPIO2_tri_o_24;
  wire [3:3]GPIO2_tri_o_3;
  wire [4:4]GPIO2_tri_o_4;
  wire [5:5]GPIO2_tri_o_5;
  wire [6:6]GPIO2_tri_o_6;
  wire [7:7]GPIO2_tri_o_7;
  wire [8:8]GPIO2_tri_o_8;
  wire [9:9]GPIO2_tri_o_9;
  wire [0:0]GPIO2_tri_t_0;
  wire [1:1]GPIO2_tri_t_1;
  wire [10:10]GPIO2_tri_t_10;
  wire [11:11]GPIO2_tri_t_11;
  wire [12:12]GPIO2_tri_t_12;
  wire [13:13]GPIO2_tri_t_13;
  wire [14:14]GPIO2_tri_t_14;
  wire [15:15]GPIO2_tri_t_15;
  wire [16:16]GPIO2_tri_t_16;
  wire [17:17]GPIO2_tri_t_17;
  wire [18:18]GPIO2_tri_t_18;
  wire [19:19]GPIO2_tri_t_19;
  wire [2:2]GPIO2_tri_t_2;
  wire [20:20]GPIO2_tri_t_20;
  wire [21:21]GPIO2_tri_t_21;
  wire [22:22]GPIO2_tri_t_22;
  wire [23:23]GPIO2_tri_t_23;
  wire [24:24]GPIO2_tri_t_24;
  wire [3:3]GPIO2_tri_t_3;
  wire [4:4]GPIO2_tri_t_4;
  wire [5:5]GPIO2_tri_t_5;
  wire [6:6]GPIO2_tri_t_6;
  wire [7:7]GPIO2_tri_t_7;
  wire [8:8]GPIO2_tri_t_8;
  wire [9:9]GPIO2_tri_t_9;
  wire [0:0]GPIO3_tri_i_0;
  wire [1:1]GPIO3_tri_i_1;
  wire [10:10]GPIO3_tri_i_10;
  wire [11:11]GPIO3_tri_i_11;
  wire [12:12]GPIO3_tri_i_12;
  wire [13:13]GPIO3_tri_i_13;
  wire [14:14]GPIO3_tri_i_14;
  wire [15:15]GPIO3_tri_i_15;
  wire [16:16]GPIO3_tri_i_16;
  wire [17:17]GPIO3_tri_i_17;
  wire [18:18]GPIO3_tri_i_18;
  wire [19:19]GPIO3_tri_i_19;
  wire [2:2]GPIO3_tri_i_2;
  wire [20:20]GPIO3_tri_i_20;
  wire [21:21]GPIO3_tri_i_21;
  wire [22:22]GPIO3_tri_i_22;
  wire [23:23]GPIO3_tri_i_23;
  wire [24:24]GPIO3_tri_i_24;
  wire [3:3]GPIO3_tri_i_3;
  wire [4:4]GPIO3_tri_i_4;
  wire [5:5]GPIO3_tri_i_5;
  wire [6:6]GPIO3_tri_i_6;
  wire [7:7]GPIO3_tri_i_7;
  wire [8:8]GPIO3_tri_i_8;
  wire [9:9]GPIO3_tri_i_9;
  wire [0:0]GPIO3_tri_io_0;
  wire [1:1]GPIO3_tri_io_1;
  wire [10:10]GPIO3_tri_io_10;
  wire [11:11]GPIO3_tri_io_11;
  wire [12:12]GPIO3_tri_io_12;
  wire [13:13]GPIO3_tri_io_13;
  wire [14:14]GPIO3_tri_io_14;
  wire [15:15]GPIO3_tri_io_15;
  wire [16:16]GPIO3_tri_io_16;
  wire [17:17]GPIO3_tri_io_17;
  wire [18:18]GPIO3_tri_io_18;
  wire [19:19]GPIO3_tri_io_19;
  wire [2:2]GPIO3_tri_io_2;
  wire [20:20]GPIO3_tri_io_20;
  wire [21:21]GPIO3_tri_io_21;
  wire [22:22]GPIO3_tri_io_22;
  wire [23:23]GPIO3_tri_io_23;
  wire [24:24]GPIO3_tri_io_24;
  wire [3:3]GPIO3_tri_io_3;
  wire [4:4]GPIO3_tri_io_4;
  wire [5:5]GPIO3_tri_io_5;
  wire [6:6]GPIO3_tri_io_6;
  wire [7:7]GPIO3_tri_io_7;
  wire [8:8]GPIO3_tri_io_8;
  wire [9:9]GPIO3_tri_io_9;
  wire [0:0]GPIO3_tri_o_0;
  wire [1:1]GPIO3_tri_o_1;
  wire [10:10]GPIO3_tri_o_10;
  wire [11:11]GPIO3_tri_o_11;
  wire [12:12]GPIO3_tri_o_12;
  wire [13:13]GPIO3_tri_o_13;
  wire [14:14]GPIO3_tri_o_14;
  wire [15:15]GPIO3_tri_o_15;
  wire [16:16]GPIO3_tri_o_16;
  wire [17:17]GPIO3_tri_o_17;
  wire [18:18]GPIO3_tri_o_18;
  wire [19:19]GPIO3_tri_o_19;
  wire [2:2]GPIO3_tri_o_2;
  wire [20:20]GPIO3_tri_o_20;
  wire [21:21]GPIO3_tri_o_21;
  wire [22:22]GPIO3_tri_o_22;
  wire [23:23]GPIO3_tri_o_23;
  wire [24:24]GPIO3_tri_o_24;
  wire [3:3]GPIO3_tri_o_3;
  wire [4:4]GPIO3_tri_o_4;
  wire [5:5]GPIO3_tri_o_5;
  wire [6:6]GPIO3_tri_o_6;
  wire [7:7]GPIO3_tri_o_7;
  wire [8:8]GPIO3_tri_o_8;
  wire [9:9]GPIO3_tri_o_9;
  wire [0:0]GPIO3_tri_t_0;
  wire [1:1]GPIO3_tri_t_1;
  wire [10:10]GPIO3_tri_t_10;
  wire [11:11]GPIO3_tri_t_11;
  wire [12:12]GPIO3_tri_t_12;
  wire [13:13]GPIO3_tri_t_13;
  wire [14:14]GPIO3_tri_t_14;
  wire [15:15]GPIO3_tri_t_15;
  wire [16:16]GPIO3_tri_t_16;
  wire [17:17]GPIO3_tri_t_17;
  wire [18:18]GPIO3_tri_t_18;
  wire [19:19]GPIO3_tri_t_19;
  wire [2:2]GPIO3_tri_t_2;
  wire [20:20]GPIO3_tri_t_20;
  wire [21:21]GPIO3_tri_t_21;
  wire [22:22]GPIO3_tri_t_22;
  wire [23:23]GPIO3_tri_t_23;
  wire [24:24]GPIO3_tri_t_24;
  wire [3:3]GPIO3_tri_t_3;
  wire [4:4]GPIO3_tri_t_4;
  wire [5:5]GPIO3_tri_t_5;
  wire [6:6]GPIO3_tri_t_6;
  wire [7:7]GPIO3_tri_t_7;
  wire [8:8]GPIO3_tri_t_8;
  wire [9:9]GPIO3_tri_t_9;
  wire [0:0]GPIO4_tri_i_0;
  wire [1:1]GPIO4_tri_i_1;
  wire [10:10]GPIO4_tri_i_10;
  wire [11:11]GPIO4_tri_i_11;
  wire [12:12]GPIO4_tri_i_12;
  wire [13:13]GPIO4_tri_i_13;
  wire [14:14]GPIO4_tri_i_14;
  wire [15:15]GPIO4_tri_i_15;
  wire [16:16]GPIO4_tri_i_16;
  wire [17:17]GPIO4_tri_i_17;
  wire [18:18]GPIO4_tri_i_18;
  wire [19:19]GPIO4_tri_i_19;
  wire [2:2]GPIO4_tri_i_2;
  wire [20:20]GPIO4_tri_i_20;
  wire [21:21]GPIO4_tri_i_21;
  wire [22:22]GPIO4_tri_i_22;
  wire [23:23]GPIO4_tri_i_23;
  wire [24:24]GPIO4_tri_i_24;
  wire [3:3]GPIO4_tri_i_3;
  wire [4:4]GPIO4_tri_i_4;
  wire [5:5]GPIO4_tri_i_5;
  wire [6:6]GPIO4_tri_i_6;
  wire [7:7]GPIO4_tri_i_7;
  wire [8:8]GPIO4_tri_i_8;
  wire [9:9]GPIO4_tri_i_9;
  wire [0:0]GPIO4_tri_io_0;
  wire [1:1]GPIO4_tri_io_1;
  wire [10:10]GPIO4_tri_io_10;
  wire [11:11]GPIO4_tri_io_11;
  wire [12:12]GPIO4_tri_io_12;
  wire [13:13]GPIO4_tri_io_13;
  wire [14:14]GPIO4_tri_io_14;
  wire [15:15]GPIO4_tri_io_15;
  wire [16:16]GPIO4_tri_io_16;
  wire [17:17]GPIO4_tri_io_17;
  wire [18:18]GPIO4_tri_io_18;
  wire [19:19]GPIO4_tri_io_19;
  wire [2:2]GPIO4_tri_io_2;
  wire [20:20]GPIO4_tri_io_20;
  wire [21:21]GPIO4_tri_io_21;
  wire [22:22]GPIO4_tri_io_22;
  wire [23:23]GPIO4_tri_io_23;
  wire [24:24]GPIO4_tri_io_24;
  wire [3:3]GPIO4_tri_io_3;
  wire [4:4]GPIO4_tri_io_4;
  wire [5:5]GPIO4_tri_io_5;
  wire [6:6]GPIO4_tri_io_6;
  wire [7:7]GPIO4_tri_io_7;
  wire [8:8]GPIO4_tri_io_8;
  wire [9:9]GPIO4_tri_io_9;
  wire [0:0]GPIO4_tri_o_0;
  wire [1:1]GPIO4_tri_o_1;
  wire [10:10]GPIO4_tri_o_10;
  wire [11:11]GPIO4_tri_o_11;
  wire [12:12]GPIO4_tri_o_12;
  wire [13:13]GPIO4_tri_o_13;
  wire [14:14]GPIO4_tri_o_14;
  wire [15:15]GPIO4_tri_o_15;
  wire [16:16]GPIO4_tri_o_16;
  wire [17:17]GPIO4_tri_o_17;
  wire [18:18]GPIO4_tri_o_18;
  wire [19:19]GPIO4_tri_o_19;
  wire [2:2]GPIO4_tri_o_2;
  wire [20:20]GPIO4_tri_o_20;
  wire [21:21]GPIO4_tri_o_21;
  wire [22:22]GPIO4_tri_o_22;
  wire [23:23]GPIO4_tri_o_23;
  wire [24:24]GPIO4_tri_o_24;
  wire [3:3]GPIO4_tri_o_3;
  wire [4:4]GPIO4_tri_o_4;
  wire [5:5]GPIO4_tri_o_5;
  wire [6:6]GPIO4_tri_o_6;
  wire [7:7]GPIO4_tri_o_7;
  wire [8:8]GPIO4_tri_o_8;
  wire [9:9]GPIO4_tri_o_9;
  wire [0:0]GPIO4_tri_t_0;
  wire [1:1]GPIO4_tri_t_1;
  wire [10:10]GPIO4_tri_t_10;
  wire [11:11]GPIO4_tri_t_11;
  wire [12:12]GPIO4_tri_t_12;
  wire [13:13]GPIO4_tri_t_13;
  wire [14:14]GPIO4_tri_t_14;
  wire [15:15]GPIO4_tri_t_15;
  wire [16:16]GPIO4_tri_t_16;
  wire [17:17]GPIO4_tri_t_17;
  wire [18:18]GPIO4_tri_t_18;
  wire [19:19]GPIO4_tri_t_19;
  wire [2:2]GPIO4_tri_t_2;
  wire [20:20]GPIO4_tri_t_20;
  wire [21:21]GPIO4_tri_t_21;
  wire [22:22]GPIO4_tri_t_22;
  wire [23:23]GPIO4_tri_t_23;
  wire [24:24]GPIO4_tri_t_24;
  wire [3:3]GPIO4_tri_t_3;
  wire [4:4]GPIO4_tri_t_4;
  wire [5:5]GPIO4_tri_t_5;
  wire [6:6]GPIO4_tri_t_6;
  wire [7:7]GPIO4_tri_t_7;
  wire [8:8]GPIO4_tri_t_8;
  wire [9:9]GPIO4_tri_t_9;

  IOBUF GPIO0_tri_iobuf_0
       (.I(GPIO0_tri_o_0),
        .IO(GPIO0_tri_io[0]),
        .O(GPIO0_tri_i_0),
        .T(GPIO0_tri_t_0));
  IOBUF GPIO0_tri_iobuf_1
       (.I(GPIO0_tri_o_1),
        .IO(GPIO0_tri_io[1]),
        .O(GPIO0_tri_i_1),
        .T(GPIO0_tri_t_1));
  IOBUF GPIO0_tri_iobuf_10
       (.I(GPIO0_tri_o_10),
        .IO(GPIO0_tri_io[10]),
        .O(GPIO0_tri_i_10),
        .T(GPIO0_tri_t_10));
  IOBUF GPIO0_tri_iobuf_11
       (.I(GPIO0_tri_o_11),
        .IO(GPIO0_tri_io[11]),
        .O(GPIO0_tri_i_11),
        .T(GPIO0_tri_t_11));
  IOBUF GPIO0_tri_iobuf_12
       (.I(GPIO0_tri_o_12),
        .IO(GPIO0_tri_io[12]),
        .O(GPIO0_tri_i_12),
        .T(GPIO0_tri_t_12));
  IOBUF GPIO0_tri_iobuf_13
       (.I(GPIO0_tri_o_13),
        .IO(GPIO0_tri_io[13]),
        .O(GPIO0_tri_i_13),
        .T(GPIO0_tri_t_13));
  IOBUF GPIO0_tri_iobuf_14
       (.I(GPIO0_tri_o_14),
        .IO(GPIO0_tri_io[14]),
        .O(GPIO0_tri_i_14),
        .T(GPIO0_tri_t_14));
  IOBUF GPIO0_tri_iobuf_15
       (.I(GPIO0_tri_o_15),
        .IO(GPIO0_tri_io[15]),
        .O(GPIO0_tri_i_15),
        .T(GPIO0_tri_t_15));
  IOBUF GPIO0_tri_iobuf_16
       (.I(GPIO0_tri_o_16),
        .IO(GPIO0_tri_io[16]),
        .O(GPIO0_tri_i_16),
        .T(GPIO0_tri_t_16));
  IOBUF GPIO0_tri_iobuf_17
       (.I(GPIO0_tri_o_17),
        .IO(GPIO0_tri_io[17]),
        .O(GPIO0_tri_i_17),
        .T(GPIO0_tri_t_17));
  IOBUF GPIO0_tri_iobuf_18
       (.I(GPIO0_tri_o_18),
        .IO(GPIO0_tri_io[18]),
        .O(GPIO0_tri_i_18),
        .T(GPIO0_tri_t_18));
  IOBUF GPIO0_tri_iobuf_19
       (.I(GPIO0_tri_o_19),
        .IO(GPIO0_tri_io[19]),
        .O(GPIO0_tri_i_19),
        .T(GPIO0_tri_t_19));
  IOBUF GPIO0_tri_iobuf_2
       (.I(GPIO0_tri_o_2),
        .IO(GPIO0_tri_io[2]),
        .O(GPIO0_tri_i_2),
        .T(GPIO0_tri_t_2));
  IOBUF GPIO0_tri_iobuf_20
       (.I(GPIO0_tri_o_20),
        .IO(GPIO0_tri_io[20]),
        .O(GPIO0_tri_i_20),
        .T(GPIO0_tri_t_20));
  IOBUF GPIO0_tri_iobuf_21
       (.I(GPIO0_tri_o_21),
        .IO(GPIO0_tri_io[21]),
        .O(GPIO0_tri_i_21),
        .T(GPIO0_tri_t_21));
  IOBUF GPIO0_tri_iobuf_22
       (.I(GPIO0_tri_o_22),
        .IO(GPIO0_tri_io[22]),
        .O(GPIO0_tri_i_22),
        .T(GPIO0_tri_t_22));
  IOBUF GPIO0_tri_iobuf_23
       (.I(GPIO0_tri_o_23),
        .IO(GPIO0_tri_io[23]),
        .O(GPIO0_tri_i_23),
        .T(GPIO0_tri_t_23));
  IOBUF GPIO0_tri_iobuf_24
       (.I(GPIO0_tri_o_24),
        .IO(GPIO0_tri_io[24]),
        .O(GPIO0_tri_i_24),
        .T(GPIO0_tri_t_24));
  IOBUF GPIO0_tri_iobuf_3
       (.I(GPIO0_tri_o_3),
        .IO(GPIO0_tri_io[3]),
        .O(GPIO0_tri_i_3),
        .T(GPIO0_tri_t_3));
  IOBUF GPIO0_tri_iobuf_4
       (.I(GPIO0_tri_o_4),
        .IO(GPIO0_tri_io[4]),
        .O(GPIO0_tri_i_4),
        .T(GPIO0_tri_t_4));
  IOBUF GPIO0_tri_iobuf_5
       (.I(GPIO0_tri_o_5),
        .IO(GPIO0_tri_io[5]),
        .O(GPIO0_tri_i_5),
        .T(GPIO0_tri_t_5));
  IOBUF GPIO0_tri_iobuf_6
       (.I(GPIO0_tri_o_6),
        .IO(GPIO0_tri_io[6]),
        .O(GPIO0_tri_i_6),
        .T(GPIO0_tri_t_6));
  IOBUF GPIO0_tri_iobuf_7
       (.I(GPIO0_tri_o_7),
        .IO(GPIO0_tri_io[7]),
        .O(GPIO0_tri_i_7),
        .T(GPIO0_tri_t_7));
  IOBUF GPIO0_tri_iobuf_8
       (.I(GPIO0_tri_o_8),
        .IO(GPIO0_tri_io[8]),
        .O(GPIO0_tri_i_8),
        .T(GPIO0_tri_t_8));
  IOBUF GPIO0_tri_iobuf_9
       (.I(GPIO0_tri_o_9),
        .IO(GPIO0_tri_io[9]),
        .O(GPIO0_tri_i_9),
        .T(GPIO0_tri_t_9));
  IOBUF GPIO1_tri_iobuf_0
       (.I(GPIO1_tri_o_0),
        .IO(GPIO1_tri_io[0]),
        .O(GPIO1_tri_i_0),
        .T(GPIO1_tri_t_0));
  IOBUF GPIO1_tri_iobuf_1
       (.I(GPIO1_tri_o_1),
        .IO(GPIO1_tri_io[1]),
        .O(GPIO1_tri_i_1),
        .T(GPIO1_tri_t_1));
  IOBUF GPIO1_tri_iobuf_10
       (.I(GPIO1_tri_o_10),
        .IO(GPIO1_tri_io[10]),
        .O(GPIO1_tri_i_10),
        .T(GPIO1_tri_t_10));
  IOBUF GPIO1_tri_iobuf_11
       (.I(GPIO1_tri_o_11),
        .IO(GPIO1_tri_io[11]),
        .O(GPIO1_tri_i_11),
        .T(GPIO1_tri_t_11));
  IOBUF GPIO1_tri_iobuf_12
       (.I(GPIO1_tri_o_12),
        .IO(GPIO1_tri_io[12]),
        .O(GPIO1_tri_i_12),
        .T(GPIO1_tri_t_12));
  IOBUF GPIO1_tri_iobuf_13
       (.I(GPIO1_tri_o_13),
        .IO(GPIO1_tri_io[13]),
        .O(GPIO1_tri_i_13),
        .T(GPIO1_tri_t_13));
  IOBUF GPIO1_tri_iobuf_14
       (.I(GPIO1_tri_o_14),
        .IO(GPIO1_tri_io[14]),
        .O(GPIO1_tri_i_14),
        .T(GPIO1_tri_t_14));
  IOBUF GPIO1_tri_iobuf_15
       (.I(GPIO1_tri_o_15),
        .IO(GPIO1_tri_io[15]),
        .O(GPIO1_tri_i_15),
        .T(GPIO1_tri_t_15));
  IOBUF GPIO1_tri_iobuf_16
       (.I(GPIO1_tri_o_16),
        .IO(GPIO1_tri_io[16]),
        .O(GPIO1_tri_i_16),
        .T(GPIO1_tri_t_16));
  IOBUF GPIO1_tri_iobuf_17
       (.I(GPIO1_tri_o_17),
        .IO(GPIO1_tri_io[17]),
        .O(GPIO1_tri_i_17),
        .T(GPIO1_tri_t_17));
  IOBUF GPIO1_tri_iobuf_18
       (.I(GPIO1_tri_o_18),
        .IO(GPIO1_tri_io[18]),
        .O(GPIO1_tri_i_18),
        .T(GPIO1_tri_t_18));
  IOBUF GPIO1_tri_iobuf_19
       (.I(GPIO1_tri_o_19),
        .IO(GPIO1_tri_io[19]),
        .O(GPIO1_tri_i_19),
        .T(GPIO1_tri_t_19));
  IOBUF GPIO1_tri_iobuf_2
       (.I(GPIO1_tri_o_2),
        .IO(GPIO1_tri_io[2]),
        .O(GPIO1_tri_i_2),
        .T(GPIO1_tri_t_2));
  IOBUF GPIO1_tri_iobuf_20
       (.I(GPIO1_tri_o_20),
        .IO(GPIO1_tri_io[20]),
        .O(GPIO1_tri_i_20),
        .T(GPIO1_tri_t_20));
  IOBUF GPIO1_tri_iobuf_21
       (.I(GPIO1_tri_o_21),
        .IO(GPIO1_tri_io[21]),
        .O(GPIO1_tri_i_21),
        .T(GPIO1_tri_t_21));
  IOBUF GPIO1_tri_iobuf_22
       (.I(GPIO1_tri_o_22),
        .IO(GPIO1_tri_io[22]),
        .O(GPIO1_tri_i_22),
        .T(GPIO1_tri_t_22));
  IOBUF GPIO1_tri_iobuf_23
       (.I(GPIO1_tri_o_23),
        .IO(GPIO1_tri_io[23]),
        .O(GPIO1_tri_i_23),
        .T(GPIO1_tri_t_23));
  IOBUF GPIO1_tri_iobuf_24
       (.I(GPIO1_tri_o_24),
        .IO(GPIO1_tri_io[24]),
        .O(GPIO1_tri_i_24),
        .T(GPIO1_tri_t_24));
  IOBUF GPIO1_tri_iobuf_3
       (.I(GPIO1_tri_o_3),
        .IO(GPIO1_tri_io[3]),
        .O(GPIO1_tri_i_3),
        .T(GPIO1_tri_t_3));
  IOBUF GPIO1_tri_iobuf_4
       (.I(GPIO1_tri_o_4),
        .IO(GPIO1_tri_io[4]),
        .O(GPIO1_tri_i_4),
        .T(GPIO1_tri_t_4));
  IOBUF GPIO1_tri_iobuf_5
       (.I(GPIO1_tri_o_5),
        .IO(GPIO1_tri_io[5]),
        .O(GPIO1_tri_i_5),
        .T(GPIO1_tri_t_5));
  IOBUF GPIO1_tri_iobuf_6
       (.I(GPIO1_tri_o_6),
        .IO(GPIO1_tri_io[6]),
        .O(GPIO1_tri_i_6),
        .T(GPIO1_tri_t_6));
  IOBUF GPIO1_tri_iobuf_7
       (.I(GPIO1_tri_o_7),
        .IO(GPIO1_tri_io[7]),
        .O(GPIO1_tri_i_7),
        .T(GPIO1_tri_t_7));
  IOBUF GPIO1_tri_iobuf_8
       (.I(GPIO1_tri_o_8),
        .IO(GPIO1_tri_io[8]),
        .O(GPIO1_tri_i_8),
        .T(GPIO1_tri_t_8));
  IOBUF GPIO1_tri_iobuf_9
       (.I(GPIO1_tri_o_9),
        .IO(GPIO1_tri_io[9]),
        .O(GPIO1_tri_i_9),
        .T(GPIO1_tri_t_9));
  IOBUF GPIO2_tri_iobuf_0
       (.I(GPIO2_tri_o_0),
        .IO(GPIO2_tri_io[0]),
        .O(GPIO2_tri_i_0),
        .T(GPIO2_tri_t_0));
  IOBUF GPIO2_tri_iobuf_1
       (.I(GPIO2_tri_o_1),
        .IO(GPIO2_tri_io[1]),
        .O(GPIO2_tri_i_1),
        .T(GPIO2_tri_t_1));
  IOBUF GPIO2_tri_iobuf_10
       (.I(GPIO2_tri_o_10),
        .IO(GPIO2_tri_io[10]),
        .O(GPIO2_tri_i_10),
        .T(GPIO2_tri_t_10));
  IOBUF GPIO2_tri_iobuf_11
       (.I(GPIO2_tri_o_11),
        .IO(GPIO2_tri_io[11]),
        .O(GPIO2_tri_i_11),
        .T(GPIO2_tri_t_11));
  IOBUF GPIO2_tri_iobuf_12
       (.I(GPIO2_tri_o_12),
        .IO(GPIO2_tri_io[12]),
        .O(GPIO2_tri_i_12),
        .T(GPIO2_tri_t_12));
  IOBUF GPIO2_tri_iobuf_13
       (.I(GPIO2_tri_o_13),
        .IO(GPIO2_tri_io[13]),
        .O(GPIO2_tri_i_13),
        .T(GPIO2_tri_t_13));
  IOBUF GPIO2_tri_iobuf_14
       (.I(GPIO2_tri_o_14),
        .IO(GPIO2_tri_io[14]),
        .O(GPIO2_tri_i_14),
        .T(GPIO2_tri_t_14));
  IOBUF GPIO2_tri_iobuf_15
       (.I(GPIO2_tri_o_15),
        .IO(GPIO2_tri_io[15]),
        .O(GPIO2_tri_i_15),
        .T(GPIO2_tri_t_15));
  IOBUF GPIO2_tri_iobuf_16
       (.I(GPIO2_tri_o_16),
        .IO(GPIO2_tri_io[16]),
        .O(GPIO2_tri_i_16),
        .T(GPIO2_tri_t_16));
  IOBUF GPIO2_tri_iobuf_17
       (.I(GPIO2_tri_o_17),
        .IO(GPIO2_tri_io[17]),
        .O(GPIO2_tri_i_17),
        .T(GPIO2_tri_t_17));
  IOBUF GPIO2_tri_iobuf_18
       (.I(GPIO2_tri_o_18),
        .IO(GPIO2_tri_io[18]),
        .O(GPIO2_tri_i_18),
        .T(GPIO2_tri_t_18));
  IOBUF GPIO2_tri_iobuf_19
       (.I(GPIO2_tri_o_19),
        .IO(GPIO2_tri_io[19]),
        .O(GPIO2_tri_i_19),
        .T(GPIO2_tri_t_19));
  IOBUF GPIO2_tri_iobuf_2
       (.I(GPIO2_tri_o_2),
        .IO(GPIO2_tri_io[2]),
        .O(GPIO2_tri_i_2),
        .T(GPIO2_tri_t_2));
  IOBUF GPIO2_tri_iobuf_20
       (.I(GPIO2_tri_o_20),
        .IO(GPIO2_tri_io[20]),
        .O(GPIO2_tri_i_20),
        .T(GPIO2_tri_t_20));
  IOBUF GPIO2_tri_iobuf_21
       (.I(GPIO2_tri_o_21),
        .IO(GPIO2_tri_io[21]),
        .O(GPIO2_tri_i_21),
        .T(GPIO2_tri_t_21));
  IOBUF GPIO2_tri_iobuf_22
       (.I(GPIO2_tri_o_22),
        .IO(GPIO2_tri_io[22]),
        .O(GPIO2_tri_i_22),
        .T(GPIO2_tri_t_22));
  IOBUF GPIO2_tri_iobuf_23
       (.I(GPIO2_tri_o_23),
        .IO(GPIO2_tri_io[23]),
        .O(GPIO2_tri_i_23),
        .T(GPIO2_tri_t_23));
  IOBUF GPIO2_tri_iobuf_24
       (.I(GPIO2_tri_o_24),
        .IO(GPIO2_tri_io[24]),
        .O(GPIO2_tri_i_24),
        .T(GPIO2_tri_t_24));
  IOBUF GPIO2_tri_iobuf_3
       (.I(GPIO2_tri_o_3),
        .IO(GPIO2_tri_io[3]),
        .O(GPIO2_tri_i_3),
        .T(GPIO2_tri_t_3));
  IOBUF GPIO2_tri_iobuf_4
       (.I(GPIO2_tri_o_4),
        .IO(GPIO2_tri_io[4]),
        .O(GPIO2_tri_i_4),
        .T(GPIO2_tri_t_4));
  IOBUF GPIO2_tri_iobuf_5
       (.I(GPIO2_tri_o_5),
        .IO(GPIO2_tri_io[5]),
        .O(GPIO2_tri_i_5),
        .T(GPIO2_tri_t_5));
  IOBUF GPIO2_tri_iobuf_6
       (.I(GPIO2_tri_o_6),
        .IO(GPIO2_tri_io[6]),
        .O(GPIO2_tri_i_6),
        .T(GPIO2_tri_t_6));
  IOBUF GPIO2_tri_iobuf_7
       (.I(GPIO2_tri_o_7),
        .IO(GPIO2_tri_io[7]),
        .O(GPIO2_tri_i_7),
        .T(GPIO2_tri_t_7));
  IOBUF GPIO2_tri_iobuf_8
       (.I(GPIO2_tri_o_8),
        .IO(GPIO2_tri_io[8]),
        .O(GPIO2_tri_i_8),
        .T(GPIO2_tri_t_8));
  IOBUF GPIO2_tri_iobuf_9
       (.I(GPIO2_tri_o_9),
        .IO(GPIO2_tri_io[9]),
        .O(GPIO2_tri_i_9),
        .T(GPIO2_tri_t_9));
  IOBUF GPIO3_tri_iobuf_0
       (.I(GPIO3_tri_o_0),
        .IO(GPIO3_tri_io[0]),
        .O(GPIO3_tri_i_0),
        .T(GPIO3_tri_t_0));
  IOBUF GPIO3_tri_iobuf_1
       (.I(GPIO3_tri_o_1),
        .IO(GPIO3_tri_io[1]),
        .O(GPIO3_tri_i_1),
        .T(GPIO3_tri_t_1));
  IOBUF GPIO3_tri_iobuf_10
       (.I(GPIO3_tri_o_10),
        .IO(GPIO3_tri_io[10]),
        .O(GPIO3_tri_i_10),
        .T(GPIO3_tri_t_10));
  IOBUF GPIO3_tri_iobuf_11
       (.I(GPIO3_tri_o_11),
        .IO(GPIO3_tri_io[11]),
        .O(GPIO3_tri_i_11),
        .T(GPIO3_tri_t_11));
  IOBUF GPIO3_tri_iobuf_12
       (.I(GPIO3_tri_o_12),
        .IO(GPIO3_tri_io[12]),
        .O(GPIO3_tri_i_12),
        .T(GPIO3_tri_t_12));
  IOBUF GPIO3_tri_iobuf_13
       (.I(GPIO3_tri_o_13),
        .IO(GPIO3_tri_io[13]),
        .O(GPIO3_tri_i_13),
        .T(GPIO3_tri_t_13));
  IOBUF GPIO3_tri_iobuf_14
       (.I(GPIO3_tri_o_14),
        .IO(GPIO3_tri_io[14]),
        .O(GPIO3_tri_i_14),
        .T(GPIO3_tri_t_14));
  IOBUF GPIO3_tri_iobuf_15
       (.I(GPIO3_tri_o_15),
        .IO(GPIO3_tri_io[15]),
        .O(GPIO3_tri_i_15),
        .T(GPIO3_tri_t_15));
  IOBUF GPIO3_tri_iobuf_16
       (.I(GPIO3_tri_o_16),
        .IO(GPIO3_tri_io[16]),
        .O(GPIO3_tri_i_16),
        .T(GPIO3_tri_t_16));
  IOBUF GPIO3_tri_iobuf_17
       (.I(GPIO3_tri_o_17),
        .IO(GPIO3_tri_io[17]),
        .O(GPIO3_tri_i_17),
        .T(GPIO3_tri_t_17));
  IOBUF GPIO3_tri_iobuf_18
       (.I(GPIO3_tri_o_18),
        .IO(GPIO3_tri_io[18]),
        .O(GPIO3_tri_i_18),
        .T(GPIO3_tri_t_18));
  IOBUF GPIO3_tri_iobuf_19
       (.I(GPIO3_tri_o_19),
        .IO(GPIO3_tri_io[19]),
        .O(GPIO3_tri_i_19),
        .T(GPIO3_tri_t_19));
  IOBUF GPIO3_tri_iobuf_2
       (.I(GPIO3_tri_o_2),
        .IO(GPIO3_tri_io[2]),
        .O(GPIO3_tri_i_2),
        .T(GPIO3_tri_t_2));
  IOBUF GPIO3_tri_iobuf_20
       (.I(GPIO3_tri_o_20),
        .IO(GPIO3_tri_io[20]),
        .O(GPIO3_tri_i_20),
        .T(GPIO3_tri_t_20));
  IOBUF GPIO3_tri_iobuf_21
       (.I(GPIO3_tri_o_21),
        .IO(GPIO3_tri_io[21]),
        .O(GPIO3_tri_i_21),
        .T(GPIO3_tri_t_21));
  IOBUF GPIO3_tri_iobuf_22
       (.I(GPIO3_tri_o_22),
        .IO(GPIO3_tri_io[22]),
        .O(GPIO3_tri_i_22),
        .T(GPIO3_tri_t_22));
  IOBUF GPIO3_tri_iobuf_23
       (.I(GPIO3_tri_o_23),
        .IO(GPIO3_tri_io[23]),
        .O(GPIO3_tri_i_23),
        .T(GPIO3_tri_t_23));
  IOBUF GPIO3_tri_iobuf_24
       (.I(GPIO3_tri_o_24),
        .IO(GPIO3_tri_io[24]),
        .O(GPIO3_tri_i_24),
        .T(GPIO3_tri_t_24));
  IOBUF GPIO3_tri_iobuf_3
       (.I(GPIO3_tri_o_3),
        .IO(GPIO3_tri_io[3]),
        .O(GPIO3_tri_i_3),
        .T(GPIO3_tri_t_3));
  IOBUF GPIO3_tri_iobuf_4
       (.I(GPIO3_tri_o_4),
        .IO(GPIO3_tri_io[4]),
        .O(GPIO3_tri_i_4),
        .T(GPIO3_tri_t_4));
  IOBUF GPIO3_tri_iobuf_5
       (.I(GPIO3_tri_o_5),
        .IO(GPIO3_tri_io[5]),
        .O(GPIO3_tri_i_5),
        .T(GPIO3_tri_t_5));
  IOBUF GPIO3_tri_iobuf_6
       (.I(GPIO3_tri_o_6),
        .IO(GPIO3_tri_io[6]),
        .O(GPIO3_tri_i_6),
        .T(GPIO3_tri_t_6));
  IOBUF GPIO3_tri_iobuf_7
       (.I(GPIO3_tri_o_7),
        .IO(GPIO3_tri_io[7]),
        .O(GPIO3_tri_i_7),
        .T(GPIO3_tri_t_7));
  IOBUF GPIO3_tri_iobuf_8
       (.I(GPIO3_tri_o_8),
        .IO(GPIO3_tri_io[8]),
        .O(GPIO3_tri_i_8),
        .T(GPIO3_tri_t_8));
  IOBUF GPIO3_tri_iobuf_9
       (.I(GPIO3_tri_o_9),
        .IO(GPIO3_tri_io[9]),
        .O(GPIO3_tri_i_9),
        .T(GPIO3_tri_t_9));
  IOBUF GPIO4_tri_iobuf_0
       (.I(GPIO4_tri_o_0),
        .IO(GPIO4_tri_io[0]),
        .O(GPIO4_tri_i_0),
        .T(GPIO4_tri_t_0));
  IOBUF GPIO4_tri_iobuf_1
       (.I(GPIO4_tri_o_1),
        .IO(GPIO4_tri_io[1]),
        .O(GPIO4_tri_i_1),
        .T(GPIO4_tri_t_1));
  IOBUF GPIO4_tri_iobuf_10
       (.I(GPIO4_tri_o_10),
        .IO(GPIO4_tri_io[10]),
        .O(GPIO4_tri_i_10),
        .T(GPIO4_tri_t_10));
  IOBUF GPIO4_tri_iobuf_11
       (.I(GPIO4_tri_o_11),
        .IO(GPIO4_tri_io[11]),
        .O(GPIO4_tri_i_11),
        .T(GPIO4_tri_t_11));
  IOBUF GPIO4_tri_iobuf_12
       (.I(GPIO4_tri_o_12),
        .IO(GPIO4_tri_io[12]),
        .O(GPIO4_tri_i_12),
        .T(GPIO4_tri_t_12));
  IOBUF GPIO4_tri_iobuf_13
       (.I(GPIO4_tri_o_13),
        .IO(GPIO4_tri_io[13]),
        .O(GPIO4_tri_i_13),
        .T(GPIO4_tri_t_13));
  IOBUF GPIO4_tri_iobuf_14
       (.I(GPIO4_tri_o_14),
        .IO(GPIO4_tri_io[14]),
        .O(GPIO4_tri_i_14),
        .T(GPIO4_tri_t_14));
  IOBUF GPIO4_tri_iobuf_15
       (.I(GPIO4_tri_o_15),
        .IO(GPIO4_tri_io[15]),
        .O(GPIO4_tri_i_15),
        .T(GPIO4_tri_t_15));
  IOBUF GPIO4_tri_iobuf_16
       (.I(GPIO4_tri_o_16),
        .IO(GPIO4_tri_io[16]),
        .O(GPIO4_tri_i_16),
        .T(GPIO4_tri_t_16));
  IOBUF GPIO4_tri_iobuf_17
       (.I(GPIO4_tri_o_17),
        .IO(GPIO4_tri_io[17]),
        .O(GPIO4_tri_i_17),
        .T(GPIO4_tri_t_17));
  IOBUF GPIO4_tri_iobuf_18
       (.I(GPIO4_tri_o_18),
        .IO(GPIO4_tri_io[18]),
        .O(GPIO4_tri_i_18),
        .T(GPIO4_tri_t_18));
  IOBUF GPIO4_tri_iobuf_19
       (.I(GPIO4_tri_o_19),
        .IO(GPIO4_tri_io[19]),
        .O(GPIO4_tri_i_19),
        .T(GPIO4_tri_t_19));
  IOBUF GPIO4_tri_iobuf_2
       (.I(GPIO4_tri_o_2),
        .IO(GPIO4_tri_io[2]),
        .O(GPIO4_tri_i_2),
        .T(GPIO4_tri_t_2));
  IOBUF GPIO4_tri_iobuf_20
       (.I(GPIO4_tri_o_20),
        .IO(GPIO4_tri_io[20]),
        .O(GPIO4_tri_i_20),
        .T(GPIO4_tri_t_20));
  IOBUF GPIO4_tri_iobuf_21
       (.I(GPIO4_tri_o_21),
        .IO(GPIO4_tri_io[21]),
        .O(GPIO4_tri_i_21),
        .T(GPIO4_tri_t_21));
  IOBUF GPIO4_tri_iobuf_22
       (.I(GPIO4_tri_o_22),
        .IO(GPIO4_tri_io[22]),
        .O(GPIO4_tri_i_22),
        .T(GPIO4_tri_t_22));
  IOBUF GPIO4_tri_iobuf_23
       (.I(GPIO4_tri_o_23),
        .IO(GPIO4_tri_io[23]),
        .O(GPIO4_tri_i_23),
        .T(GPIO4_tri_t_23));
  IOBUF GPIO4_tri_iobuf_24
       (.I(GPIO4_tri_o_24),
        .IO(GPIO4_tri_io[24]),
        .O(GPIO4_tri_i_24),
        .T(GPIO4_tri_t_24));
  IOBUF GPIO4_tri_iobuf_3
       (.I(GPIO4_tri_o_3),
        .IO(GPIO4_tri_io[3]),
        .O(GPIO4_tri_i_3),
        .T(GPIO4_tri_t_3));
  IOBUF GPIO4_tri_iobuf_4
       (.I(GPIO4_tri_o_4),
        .IO(GPIO4_tri_io[4]),
        .O(GPIO4_tri_i_4),
        .T(GPIO4_tri_t_4));
  IOBUF GPIO4_tri_iobuf_5
       (.I(GPIO4_tri_o_5),
        .IO(GPIO4_tri_io[5]),
        .O(GPIO4_tri_i_5),
        .T(GPIO4_tri_t_5));
  IOBUF GPIO4_tri_iobuf_6
       (.I(GPIO4_tri_o_6),
        .IO(GPIO4_tri_io[6]),
        .O(GPIO4_tri_i_6),
        .T(GPIO4_tri_t_6));
  IOBUF GPIO4_tri_iobuf_7
       (.I(GPIO4_tri_o_7),
        .IO(GPIO4_tri_io[7]),
        .O(GPIO4_tri_i_7),
        .T(GPIO4_tri_t_7));
  IOBUF GPIO4_tri_iobuf_8
       (.I(GPIO4_tri_o_8),
        .IO(GPIO4_tri_io[8]),
        .O(GPIO4_tri_i_8),
        .T(GPIO4_tri_t_8));
  IOBUF GPIO4_tri_iobuf_9
       (.I(GPIO4_tri_o_9),
        .IO(GPIO4_tri_io[9]),
        .O(GPIO4_tri_i_9),
        .T(GPIO4_tri_t_9));
  base base_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO0_tri_i({GPIO0_tri_i_24,GPIO0_tri_i_23,GPIO0_tri_i_22,GPIO0_tri_i_21,GPIO0_tri_i_20,GPIO0_tri_i_19,GPIO0_tri_i_18,GPIO0_tri_i_17,GPIO0_tri_i_16,GPIO0_tri_i_15,GPIO0_tri_i_14,GPIO0_tri_i_13,GPIO0_tri_i_12,GPIO0_tri_i_11,GPIO0_tri_i_10,GPIO0_tri_i_9,GPIO0_tri_i_8,GPIO0_tri_i_7,GPIO0_tri_i_6,GPIO0_tri_i_5,GPIO0_tri_i_4,GPIO0_tri_i_3,GPIO0_tri_i_2,GPIO0_tri_i_1,GPIO0_tri_i_0}),
        .GPIO0_tri_o({GPIO0_tri_o_24,GPIO0_tri_o_23,GPIO0_tri_o_22,GPIO0_tri_o_21,GPIO0_tri_o_20,GPIO0_tri_o_19,GPIO0_tri_o_18,GPIO0_tri_o_17,GPIO0_tri_o_16,GPIO0_tri_o_15,GPIO0_tri_o_14,GPIO0_tri_o_13,GPIO0_tri_o_12,GPIO0_tri_o_11,GPIO0_tri_o_10,GPIO0_tri_o_9,GPIO0_tri_o_8,GPIO0_tri_o_7,GPIO0_tri_o_6,GPIO0_tri_o_5,GPIO0_tri_o_4,GPIO0_tri_o_3,GPIO0_tri_o_2,GPIO0_tri_o_1,GPIO0_tri_o_0}),
        .GPIO0_tri_t({GPIO0_tri_t_24,GPIO0_tri_t_23,GPIO0_tri_t_22,GPIO0_tri_t_21,GPIO0_tri_t_20,GPIO0_tri_t_19,GPIO0_tri_t_18,GPIO0_tri_t_17,GPIO0_tri_t_16,GPIO0_tri_t_15,GPIO0_tri_t_14,GPIO0_tri_t_13,GPIO0_tri_t_12,GPIO0_tri_t_11,GPIO0_tri_t_10,GPIO0_tri_t_9,GPIO0_tri_t_8,GPIO0_tri_t_7,GPIO0_tri_t_6,GPIO0_tri_t_5,GPIO0_tri_t_4,GPIO0_tri_t_3,GPIO0_tri_t_2,GPIO0_tri_t_1,GPIO0_tri_t_0}),
        .GPIO1_tri_i({GPIO1_tri_i_24,GPIO1_tri_i_23,GPIO1_tri_i_22,GPIO1_tri_i_21,GPIO1_tri_i_20,GPIO1_tri_i_19,GPIO1_tri_i_18,GPIO1_tri_i_17,GPIO1_tri_i_16,GPIO1_tri_i_15,GPIO1_tri_i_14,GPIO1_tri_i_13,GPIO1_tri_i_12,GPIO1_tri_i_11,GPIO1_tri_i_10,GPIO1_tri_i_9,GPIO1_tri_i_8,GPIO1_tri_i_7,GPIO1_tri_i_6,GPIO1_tri_i_5,GPIO1_tri_i_4,GPIO1_tri_i_3,GPIO1_tri_i_2,GPIO1_tri_i_1,GPIO1_tri_i_0}),
        .GPIO1_tri_o({GPIO1_tri_o_24,GPIO1_tri_o_23,GPIO1_tri_o_22,GPIO1_tri_o_21,GPIO1_tri_o_20,GPIO1_tri_o_19,GPIO1_tri_o_18,GPIO1_tri_o_17,GPIO1_tri_o_16,GPIO1_tri_o_15,GPIO1_tri_o_14,GPIO1_tri_o_13,GPIO1_tri_o_12,GPIO1_tri_o_11,GPIO1_tri_o_10,GPIO1_tri_o_9,GPIO1_tri_o_8,GPIO1_tri_o_7,GPIO1_tri_o_6,GPIO1_tri_o_5,GPIO1_tri_o_4,GPIO1_tri_o_3,GPIO1_tri_o_2,GPIO1_tri_o_1,GPIO1_tri_o_0}),
        .GPIO1_tri_t({GPIO1_tri_t_24,GPIO1_tri_t_23,GPIO1_tri_t_22,GPIO1_tri_t_21,GPIO1_tri_t_20,GPIO1_tri_t_19,GPIO1_tri_t_18,GPIO1_tri_t_17,GPIO1_tri_t_16,GPIO1_tri_t_15,GPIO1_tri_t_14,GPIO1_tri_t_13,GPIO1_tri_t_12,GPIO1_tri_t_11,GPIO1_tri_t_10,GPIO1_tri_t_9,GPIO1_tri_t_8,GPIO1_tri_t_7,GPIO1_tri_t_6,GPIO1_tri_t_5,GPIO1_tri_t_4,GPIO1_tri_t_3,GPIO1_tri_t_2,GPIO1_tri_t_1,GPIO1_tri_t_0}),
        .GPIO2_tri_i({GPIO2_tri_i_24,GPIO2_tri_i_23,GPIO2_tri_i_22,GPIO2_tri_i_21,GPIO2_tri_i_20,GPIO2_tri_i_19,GPIO2_tri_i_18,GPIO2_tri_i_17,GPIO2_tri_i_16,GPIO2_tri_i_15,GPIO2_tri_i_14,GPIO2_tri_i_13,GPIO2_tri_i_12,GPIO2_tri_i_11,GPIO2_tri_i_10,GPIO2_tri_i_9,GPIO2_tri_i_8,GPIO2_tri_i_7,GPIO2_tri_i_6,GPIO2_tri_i_5,GPIO2_tri_i_4,GPIO2_tri_i_3,GPIO2_tri_i_2,GPIO2_tri_i_1,GPIO2_tri_i_0}),
        .GPIO2_tri_o({GPIO2_tri_o_24,GPIO2_tri_o_23,GPIO2_tri_o_22,GPIO2_tri_o_21,GPIO2_tri_o_20,GPIO2_tri_o_19,GPIO2_tri_o_18,GPIO2_tri_o_17,GPIO2_tri_o_16,GPIO2_tri_o_15,GPIO2_tri_o_14,GPIO2_tri_o_13,GPIO2_tri_o_12,GPIO2_tri_o_11,GPIO2_tri_o_10,GPIO2_tri_o_9,GPIO2_tri_o_8,GPIO2_tri_o_7,GPIO2_tri_o_6,GPIO2_tri_o_5,GPIO2_tri_o_4,GPIO2_tri_o_3,GPIO2_tri_o_2,GPIO2_tri_o_1,GPIO2_tri_o_0}),
        .GPIO2_tri_t({GPIO2_tri_t_24,GPIO2_tri_t_23,GPIO2_tri_t_22,GPIO2_tri_t_21,GPIO2_tri_t_20,GPIO2_tri_t_19,GPIO2_tri_t_18,GPIO2_tri_t_17,GPIO2_tri_t_16,GPIO2_tri_t_15,GPIO2_tri_t_14,GPIO2_tri_t_13,GPIO2_tri_t_12,GPIO2_tri_t_11,GPIO2_tri_t_10,GPIO2_tri_t_9,GPIO2_tri_t_8,GPIO2_tri_t_7,GPIO2_tri_t_6,GPIO2_tri_t_5,GPIO2_tri_t_4,GPIO2_tri_t_3,GPIO2_tri_t_2,GPIO2_tri_t_1,GPIO2_tri_t_0}),
        .GPIO3_tri_i({GPIO3_tri_i_24,GPIO3_tri_i_23,GPIO3_tri_i_22,GPIO3_tri_i_21,GPIO3_tri_i_20,GPIO3_tri_i_19,GPIO3_tri_i_18,GPIO3_tri_i_17,GPIO3_tri_i_16,GPIO3_tri_i_15,GPIO3_tri_i_14,GPIO3_tri_i_13,GPIO3_tri_i_12,GPIO3_tri_i_11,GPIO3_tri_i_10,GPIO3_tri_i_9,GPIO3_tri_i_8,GPIO3_tri_i_7,GPIO3_tri_i_6,GPIO3_tri_i_5,GPIO3_tri_i_4,GPIO3_tri_i_3,GPIO3_tri_i_2,GPIO3_tri_i_1,GPIO3_tri_i_0}),
        .GPIO3_tri_o({GPIO3_tri_o_24,GPIO3_tri_o_23,GPIO3_tri_o_22,GPIO3_tri_o_21,GPIO3_tri_o_20,GPIO3_tri_o_19,GPIO3_tri_o_18,GPIO3_tri_o_17,GPIO3_tri_o_16,GPIO3_tri_o_15,GPIO3_tri_o_14,GPIO3_tri_o_13,GPIO3_tri_o_12,GPIO3_tri_o_11,GPIO3_tri_o_10,GPIO3_tri_o_9,GPIO3_tri_o_8,GPIO3_tri_o_7,GPIO3_tri_o_6,GPIO3_tri_o_5,GPIO3_tri_o_4,GPIO3_tri_o_3,GPIO3_tri_o_2,GPIO3_tri_o_1,GPIO3_tri_o_0}),
        .GPIO3_tri_t({GPIO3_tri_t_24,GPIO3_tri_t_23,GPIO3_tri_t_22,GPIO3_tri_t_21,GPIO3_tri_t_20,GPIO3_tri_t_19,GPIO3_tri_t_18,GPIO3_tri_t_17,GPIO3_tri_t_16,GPIO3_tri_t_15,GPIO3_tri_t_14,GPIO3_tri_t_13,GPIO3_tri_t_12,GPIO3_tri_t_11,GPIO3_tri_t_10,GPIO3_tri_t_9,GPIO3_tri_t_8,GPIO3_tri_t_7,GPIO3_tri_t_6,GPIO3_tri_t_5,GPIO3_tri_t_4,GPIO3_tri_t_3,GPIO3_tri_t_2,GPIO3_tri_t_1,GPIO3_tri_t_0}),
        .GPIO4_tri_i({GPIO4_tri_i_24,GPIO4_tri_i_23,GPIO4_tri_i_22,GPIO4_tri_i_21,GPIO4_tri_i_20,GPIO4_tri_i_19,GPIO4_tri_i_18,GPIO4_tri_i_17,GPIO4_tri_i_16,GPIO4_tri_i_15,GPIO4_tri_i_14,GPIO4_tri_i_13,GPIO4_tri_i_12,GPIO4_tri_i_11,GPIO4_tri_i_10,GPIO4_tri_i_9,GPIO4_tri_i_8,GPIO4_tri_i_7,GPIO4_tri_i_6,GPIO4_tri_i_5,GPIO4_tri_i_4,GPIO4_tri_i_3,GPIO4_tri_i_2,GPIO4_tri_i_1,GPIO4_tri_i_0}),
        .GPIO4_tri_o({GPIO4_tri_o_24,GPIO4_tri_o_23,GPIO4_tri_o_22,GPIO4_tri_o_21,GPIO4_tri_o_20,GPIO4_tri_o_19,GPIO4_tri_o_18,GPIO4_tri_o_17,GPIO4_tri_o_16,GPIO4_tri_o_15,GPIO4_tri_o_14,GPIO4_tri_o_13,GPIO4_tri_o_12,GPIO4_tri_o_11,GPIO4_tri_o_10,GPIO4_tri_o_9,GPIO4_tri_o_8,GPIO4_tri_o_7,GPIO4_tri_o_6,GPIO4_tri_o_5,GPIO4_tri_o_4,GPIO4_tri_o_3,GPIO4_tri_o_2,GPIO4_tri_o_1,GPIO4_tri_o_0}),
        .GPIO4_tri_t({GPIO4_tri_t_24,GPIO4_tri_t_23,GPIO4_tri_t_22,GPIO4_tri_t_21,GPIO4_tri_t_20,GPIO4_tri_t_19,GPIO4_tri_t_18,GPIO4_tri_t_17,GPIO4_tri_t_16,GPIO4_tri_t_15,GPIO4_tri_t_14,GPIO4_tri_t_13,GPIO4_tri_t_12,GPIO4_tri_t_11,GPIO4_tri_t_10,GPIO4_tri_t_9,GPIO4_tri_t_8,GPIO4_tri_t_7,GPIO4_tri_t_6,GPIO4_tri_t_5,GPIO4_tri_t_4,GPIO4_tri_t_3,GPIO4_tri_t_2,GPIO4_tri_t_1,GPIO4_tri_t_0}));
endmodule
