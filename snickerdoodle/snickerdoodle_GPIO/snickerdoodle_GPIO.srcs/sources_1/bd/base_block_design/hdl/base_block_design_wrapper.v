//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Wed Jan 18 18:35:52 2017
//Host        : WIN-MJ2I8SI0RJV running 64-bit major release  (build 9200)
//Command     : generate_target base_block_design_wrapper.bd
//Design      : base_block_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module base_block_design_wrapper
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
    gpio0_tri_io,
    gpio1_tri_io,
    gpio2_tri_io,
    gpio3_tri_io);
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
  inout [24:0]gpio0_tri_io;
  inout [24:0]gpio1_tri_io;
  inout [24:0]gpio2_tri_io;
  inout [24:0]gpio3_tri_io;

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
  wire [0:0]gpio0_tri_i_0;
  wire [1:1]gpio0_tri_i_1;
  wire [10:10]gpio0_tri_i_10;
  wire [11:11]gpio0_tri_i_11;
  wire [12:12]gpio0_tri_i_12;
  wire [13:13]gpio0_tri_i_13;
  wire [14:14]gpio0_tri_i_14;
  wire [15:15]gpio0_tri_i_15;
  wire [16:16]gpio0_tri_i_16;
  wire [17:17]gpio0_tri_i_17;
  wire [18:18]gpio0_tri_i_18;
  wire [19:19]gpio0_tri_i_19;
  wire [2:2]gpio0_tri_i_2;
  wire [20:20]gpio0_tri_i_20;
  wire [21:21]gpio0_tri_i_21;
  wire [22:22]gpio0_tri_i_22;
  wire [23:23]gpio0_tri_i_23;
  wire [24:24]gpio0_tri_i_24;
  wire [3:3]gpio0_tri_i_3;
  wire [4:4]gpio0_tri_i_4;
  wire [5:5]gpio0_tri_i_5;
  wire [6:6]gpio0_tri_i_6;
  wire [7:7]gpio0_tri_i_7;
  wire [8:8]gpio0_tri_i_8;
  wire [9:9]gpio0_tri_i_9;
  wire [0:0]gpio0_tri_io_0;
  wire [1:1]gpio0_tri_io_1;
  wire [10:10]gpio0_tri_io_10;
  wire [11:11]gpio0_tri_io_11;
  wire [12:12]gpio0_tri_io_12;
  wire [13:13]gpio0_tri_io_13;
  wire [14:14]gpio0_tri_io_14;
  wire [15:15]gpio0_tri_io_15;
  wire [16:16]gpio0_tri_io_16;
  wire [17:17]gpio0_tri_io_17;
  wire [18:18]gpio0_tri_io_18;
  wire [19:19]gpio0_tri_io_19;
  wire [2:2]gpio0_tri_io_2;
  wire [20:20]gpio0_tri_io_20;
  wire [21:21]gpio0_tri_io_21;
  wire [22:22]gpio0_tri_io_22;
  wire [23:23]gpio0_tri_io_23;
  wire [24:24]gpio0_tri_io_24;
  wire [3:3]gpio0_tri_io_3;
  wire [4:4]gpio0_tri_io_4;
  wire [5:5]gpio0_tri_io_5;
  wire [6:6]gpio0_tri_io_6;
  wire [7:7]gpio0_tri_io_7;
  wire [8:8]gpio0_tri_io_8;
  wire [9:9]gpio0_tri_io_9;
  wire [0:0]gpio0_tri_o_0;
  wire [1:1]gpio0_tri_o_1;
  wire [10:10]gpio0_tri_o_10;
  wire [11:11]gpio0_tri_o_11;
  wire [12:12]gpio0_tri_o_12;
  wire [13:13]gpio0_tri_o_13;
  wire [14:14]gpio0_tri_o_14;
  wire [15:15]gpio0_tri_o_15;
  wire [16:16]gpio0_tri_o_16;
  wire [17:17]gpio0_tri_o_17;
  wire [18:18]gpio0_tri_o_18;
  wire [19:19]gpio0_tri_o_19;
  wire [2:2]gpio0_tri_o_2;
  wire [20:20]gpio0_tri_o_20;
  wire [21:21]gpio0_tri_o_21;
  wire [22:22]gpio0_tri_o_22;
  wire [23:23]gpio0_tri_o_23;
  wire [24:24]gpio0_tri_o_24;
  wire [3:3]gpio0_tri_o_3;
  wire [4:4]gpio0_tri_o_4;
  wire [5:5]gpio0_tri_o_5;
  wire [6:6]gpio0_tri_o_6;
  wire [7:7]gpio0_tri_o_7;
  wire [8:8]gpio0_tri_o_8;
  wire [9:9]gpio0_tri_o_9;
  wire [0:0]gpio0_tri_t_0;
  wire [1:1]gpio0_tri_t_1;
  wire [10:10]gpio0_tri_t_10;
  wire [11:11]gpio0_tri_t_11;
  wire [12:12]gpio0_tri_t_12;
  wire [13:13]gpio0_tri_t_13;
  wire [14:14]gpio0_tri_t_14;
  wire [15:15]gpio0_tri_t_15;
  wire [16:16]gpio0_tri_t_16;
  wire [17:17]gpio0_tri_t_17;
  wire [18:18]gpio0_tri_t_18;
  wire [19:19]gpio0_tri_t_19;
  wire [2:2]gpio0_tri_t_2;
  wire [20:20]gpio0_tri_t_20;
  wire [21:21]gpio0_tri_t_21;
  wire [22:22]gpio0_tri_t_22;
  wire [23:23]gpio0_tri_t_23;
  wire [24:24]gpio0_tri_t_24;
  wire [3:3]gpio0_tri_t_3;
  wire [4:4]gpio0_tri_t_4;
  wire [5:5]gpio0_tri_t_5;
  wire [6:6]gpio0_tri_t_6;
  wire [7:7]gpio0_tri_t_7;
  wire [8:8]gpio0_tri_t_8;
  wire [9:9]gpio0_tri_t_9;
  wire [0:0]gpio1_tri_i_0;
  wire [1:1]gpio1_tri_i_1;
  wire [10:10]gpio1_tri_i_10;
  wire [11:11]gpio1_tri_i_11;
  wire [12:12]gpio1_tri_i_12;
  wire [13:13]gpio1_tri_i_13;
  wire [14:14]gpio1_tri_i_14;
  wire [15:15]gpio1_tri_i_15;
  wire [16:16]gpio1_tri_i_16;
  wire [17:17]gpio1_tri_i_17;
  wire [18:18]gpio1_tri_i_18;
  wire [19:19]gpio1_tri_i_19;
  wire [2:2]gpio1_tri_i_2;
  wire [20:20]gpio1_tri_i_20;
  wire [21:21]gpio1_tri_i_21;
  wire [22:22]gpio1_tri_i_22;
  wire [23:23]gpio1_tri_i_23;
  wire [24:24]gpio1_tri_i_24;
  wire [3:3]gpio1_tri_i_3;
  wire [4:4]gpio1_tri_i_4;
  wire [5:5]gpio1_tri_i_5;
  wire [6:6]gpio1_tri_i_6;
  wire [7:7]gpio1_tri_i_7;
  wire [8:8]gpio1_tri_i_8;
  wire [9:9]gpio1_tri_i_9;
  wire [0:0]gpio1_tri_io_0;
  wire [1:1]gpio1_tri_io_1;
  wire [10:10]gpio1_tri_io_10;
  wire [11:11]gpio1_tri_io_11;
  wire [12:12]gpio1_tri_io_12;
  wire [13:13]gpio1_tri_io_13;
  wire [14:14]gpio1_tri_io_14;
  wire [15:15]gpio1_tri_io_15;
  wire [16:16]gpio1_tri_io_16;
  wire [17:17]gpio1_tri_io_17;
  wire [18:18]gpio1_tri_io_18;
  wire [19:19]gpio1_tri_io_19;
  wire [2:2]gpio1_tri_io_2;
  wire [20:20]gpio1_tri_io_20;
  wire [21:21]gpio1_tri_io_21;
  wire [22:22]gpio1_tri_io_22;
  wire [23:23]gpio1_tri_io_23;
  wire [24:24]gpio1_tri_io_24;
  wire [3:3]gpio1_tri_io_3;
  wire [4:4]gpio1_tri_io_4;
  wire [5:5]gpio1_tri_io_5;
  wire [6:6]gpio1_tri_io_6;
  wire [7:7]gpio1_tri_io_7;
  wire [8:8]gpio1_tri_io_8;
  wire [9:9]gpio1_tri_io_9;
  wire [0:0]gpio1_tri_o_0;
  wire [1:1]gpio1_tri_o_1;
  wire [10:10]gpio1_tri_o_10;
  wire [11:11]gpio1_tri_o_11;
  wire [12:12]gpio1_tri_o_12;
  wire [13:13]gpio1_tri_o_13;
  wire [14:14]gpio1_tri_o_14;
  wire [15:15]gpio1_tri_o_15;
  wire [16:16]gpio1_tri_o_16;
  wire [17:17]gpio1_tri_o_17;
  wire [18:18]gpio1_tri_o_18;
  wire [19:19]gpio1_tri_o_19;
  wire [2:2]gpio1_tri_o_2;
  wire [20:20]gpio1_tri_o_20;
  wire [21:21]gpio1_tri_o_21;
  wire [22:22]gpio1_tri_o_22;
  wire [23:23]gpio1_tri_o_23;
  wire [24:24]gpio1_tri_o_24;
  wire [3:3]gpio1_tri_o_3;
  wire [4:4]gpio1_tri_o_4;
  wire [5:5]gpio1_tri_o_5;
  wire [6:6]gpio1_tri_o_6;
  wire [7:7]gpio1_tri_o_7;
  wire [8:8]gpio1_tri_o_8;
  wire [9:9]gpio1_tri_o_9;
  wire [0:0]gpio1_tri_t_0;
  wire [1:1]gpio1_tri_t_1;
  wire [10:10]gpio1_tri_t_10;
  wire [11:11]gpio1_tri_t_11;
  wire [12:12]gpio1_tri_t_12;
  wire [13:13]gpio1_tri_t_13;
  wire [14:14]gpio1_tri_t_14;
  wire [15:15]gpio1_tri_t_15;
  wire [16:16]gpio1_tri_t_16;
  wire [17:17]gpio1_tri_t_17;
  wire [18:18]gpio1_tri_t_18;
  wire [19:19]gpio1_tri_t_19;
  wire [2:2]gpio1_tri_t_2;
  wire [20:20]gpio1_tri_t_20;
  wire [21:21]gpio1_tri_t_21;
  wire [22:22]gpio1_tri_t_22;
  wire [23:23]gpio1_tri_t_23;
  wire [24:24]gpio1_tri_t_24;
  wire [3:3]gpio1_tri_t_3;
  wire [4:4]gpio1_tri_t_4;
  wire [5:5]gpio1_tri_t_5;
  wire [6:6]gpio1_tri_t_6;
  wire [7:7]gpio1_tri_t_7;
  wire [8:8]gpio1_tri_t_8;
  wire [9:9]gpio1_tri_t_9;
  wire [0:0]gpio2_tri_i_0;
  wire [1:1]gpio2_tri_i_1;
  wire [10:10]gpio2_tri_i_10;
  wire [11:11]gpio2_tri_i_11;
  wire [12:12]gpio2_tri_i_12;
  wire [13:13]gpio2_tri_i_13;
  wire [14:14]gpio2_tri_i_14;
  wire [15:15]gpio2_tri_i_15;
  wire [16:16]gpio2_tri_i_16;
  wire [17:17]gpio2_tri_i_17;
  wire [18:18]gpio2_tri_i_18;
  wire [19:19]gpio2_tri_i_19;
  wire [2:2]gpio2_tri_i_2;
  wire [20:20]gpio2_tri_i_20;
  wire [21:21]gpio2_tri_i_21;
  wire [22:22]gpio2_tri_i_22;
  wire [23:23]gpio2_tri_i_23;
  wire [24:24]gpio2_tri_i_24;
  wire [3:3]gpio2_tri_i_3;
  wire [4:4]gpio2_tri_i_4;
  wire [5:5]gpio2_tri_i_5;
  wire [6:6]gpio2_tri_i_6;
  wire [7:7]gpio2_tri_i_7;
  wire [8:8]gpio2_tri_i_8;
  wire [9:9]gpio2_tri_i_9;
  wire [0:0]gpio2_tri_io_0;
  wire [1:1]gpio2_tri_io_1;
  wire [10:10]gpio2_tri_io_10;
  wire [11:11]gpio2_tri_io_11;
  wire [12:12]gpio2_tri_io_12;
  wire [13:13]gpio2_tri_io_13;
  wire [14:14]gpio2_tri_io_14;
  wire [15:15]gpio2_tri_io_15;
  wire [16:16]gpio2_tri_io_16;
  wire [17:17]gpio2_tri_io_17;
  wire [18:18]gpio2_tri_io_18;
  wire [19:19]gpio2_tri_io_19;
  wire [2:2]gpio2_tri_io_2;
  wire [20:20]gpio2_tri_io_20;
  wire [21:21]gpio2_tri_io_21;
  wire [22:22]gpio2_tri_io_22;
  wire [23:23]gpio2_tri_io_23;
  wire [24:24]gpio2_tri_io_24;
  wire [3:3]gpio2_tri_io_3;
  wire [4:4]gpio2_tri_io_4;
  wire [5:5]gpio2_tri_io_5;
  wire [6:6]gpio2_tri_io_6;
  wire [7:7]gpio2_tri_io_7;
  wire [8:8]gpio2_tri_io_8;
  wire [9:9]gpio2_tri_io_9;
  wire [0:0]gpio2_tri_o_0;
  wire [1:1]gpio2_tri_o_1;
  wire [10:10]gpio2_tri_o_10;
  wire [11:11]gpio2_tri_o_11;
  wire [12:12]gpio2_tri_o_12;
  wire [13:13]gpio2_tri_o_13;
  wire [14:14]gpio2_tri_o_14;
  wire [15:15]gpio2_tri_o_15;
  wire [16:16]gpio2_tri_o_16;
  wire [17:17]gpio2_tri_o_17;
  wire [18:18]gpio2_tri_o_18;
  wire [19:19]gpio2_tri_o_19;
  wire [2:2]gpio2_tri_o_2;
  wire [20:20]gpio2_tri_o_20;
  wire [21:21]gpio2_tri_o_21;
  wire [22:22]gpio2_tri_o_22;
  wire [23:23]gpio2_tri_o_23;
  wire [24:24]gpio2_tri_o_24;
  wire [3:3]gpio2_tri_o_3;
  wire [4:4]gpio2_tri_o_4;
  wire [5:5]gpio2_tri_o_5;
  wire [6:6]gpio2_tri_o_6;
  wire [7:7]gpio2_tri_o_7;
  wire [8:8]gpio2_tri_o_8;
  wire [9:9]gpio2_tri_o_9;
  wire [0:0]gpio2_tri_t_0;
  wire [1:1]gpio2_tri_t_1;
  wire [10:10]gpio2_tri_t_10;
  wire [11:11]gpio2_tri_t_11;
  wire [12:12]gpio2_tri_t_12;
  wire [13:13]gpio2_tri_t_13;
  wire [14:14]gpio2_tri_t_14;
  wire [15:15]gpio2_tri_t_15;
  wire [16:16]gpio2_tri_t_16;
  wire [17:17]gpio2_tri_t_17;
  wire [18:18]gpio2_tri_t_18;
  wire [19:19]gpio2_tri_t_19;
  wire [2:2]gpio2_tri_t_2;
  wire [20:20]gpio2_tri_t_20;
  wire [21:21]gpio2_tri_t_21;
  wire [22:22]gpio2_tri_t_22;
  wire [23:23]gpio2_tri_t_23;
  wire [24:24]gpio2_tri_t_24;
  wire [3:3]gpio2_tri_t_3;
  wire [4:4]gpio2_tri_t_4;
  wire [5:5]gpio2_tri_t_5;
  wire [6:6]gpio2_tri_t_6;
  wire [7:7]gpio2_tri_t_7;
  wire [8:8]gpio2_tri_t_8;
  wire [9:9]gpio2_tri_t_9;
  wire [0:0]gpio3_tri_i_0;
  wire [1:1]gpio3_tri_i_1;
  wire [10:10]gpio3_tri_i_10;
  wire [11:11]gpio3_tri_i_11;
  wire [12:12]gpio3_tri_i_12;
  wire [13:13]gpio3_tri_i_13;
  wire [14:14]gpio3_tri_i_14;
  wire [15:15]gpio3_tri_i_15;
  wire [16:16]gpio3_tri_i_16;
  wire [17:17]gpio3_tri_i_17;
  wire [18:18]gpio3_tri_i_18;
  wire [19:19]gpio3_tri_i_19;
  wire [2:2]gpio3_tri_i_2;
  wire [20:20]gpio3_tri_i_20;
  wire [21:21]gpio3_tri_i_21;
  wire [22:22]gpio3_tri_i_22;
  wire [23:23]gpio3_tri_i_23;
  wire [24:24]gpio3_tri_i_24;
  wire [3:3]gpio3_tri_i_3;
  wire [4:4]gpio3_tri_i_4;
  wire [5:5]gpio3_tri_i_5;
  wire [6:6]gpio3_tri_i_6;
  wire [7:7]gpio3_tri_i_7;
  wire [8:8]gpio3_tri_i_8;
  wire [9:9]gpio3_tri_i_9;
  wire [0:0]gpio3_tri_io_0;
  wire [1:1]gpio3_tri_io_1;
  wire [10:10]gpio3_tri_io_10;
  wire [11:11]gpio3_tri_io_11;
  wire [12:12]gpio3_tri_io_12;
  wire [13:13]gpio3_tri_io_13;
  wire [14:14]gpio3_tri_io_14;
  wire [15:15]gpio3_tri_io_15;
  wire [16:16]gpio3_tri_io_16;
  wire [17:17]gpio3_tri_io_17;
  wire [18:18]gpio3_tri_io_18;
  wire [19:19]gpio3_tri_io_19;
  wire [2:2]gpio3_tri_io_2;
  wire [20:20]gpio3_tri_io_20;
  wire [21:21]gpio3_tri_io_21;
  wire [22:22]gpio3_tri_io_22;
  wire [23:23]gpio3_tri_io_23;
  wire [24:24]gpio3_tri_io_24;
  wire [3:3]gpio3_tri_io_3;
  wire [4:4]gpio3_tri_io_4;
  wire [5:5]gpio3_tri_io_5;
  wire [6:6]gpio3_tri_io_6;
  wire [7:7]gpio3_tri_io_7;
  wire [8:8]gpio3_tri_io_8;
  wire [9:9]gpio3_tri_io_9;
  wire [0:0]gpio3_tri_o_0;
  wire [1:1]gpio3_tri_o_1;
  wire [10:10]gpio3_tri_o_10;
  wire [11:11]gpio3_tri_o_11;
  wire [12:12]gpio3_tri_o_12;
  wire [13:13]gpio3_tri_o_13;
  wire [14:14]gpio3_tri_o_14;
  wire [15:15]gpio3_tri_o_15;
  wire [16:16]gpio3_tri_o_16;
  wire [17:17]gpio3_tri_o_17;
  wire [18:18]gpio3_tri_o_18;
  wire [19:19]gpio3_tri_o_19;
  wire [2:2]gpio3_tri_o_2;
  wire [20:20]gpio3_tri_o_20;
  wire [21:21]gpio3_tri_o_21;
  wire [22:22]gpio3_tri_o_22;
  wire [23:23]gpio3_tri_o_23;
  wire [24:24]gpio3_tri_o_24;
  wire [3:3]gpio3_tri_o_3;
  wire [4:4]gpio3_tri_o_4;
  wire [5:5]gpio3_tri_o_5;
  wire [6:6]gpio3_tri_o_6;
  wire [7:7]gpio3_tri_o_7;
  wire [8:8]gpio3_tri_o_8;
  wire [9:9]gpio3_tri_o_9;
  wire [0:0]gpio3_tri_t_0;
  wire [1:1]gpio3_tri_t_1;
  wire [10:10]gpio3_tri_t_10;
  wire [11:11]gpio3_tri_t_11;
  wire [12:12]gpio3_tri_t_12;
  wire [13:13]gpio3_tri_t_13;
  wire [14:14]gpio3_tri_t_14;
  wire [15:15]gpio3_tri_t_15;
  wire [16:16]gpio3_tri_t_16;
  wire [17:17]gpio3_tri_t_17;
  wire [18:18]gpio3_tri_t_18;
  wire [19:19]gpio3_tri_t_19;
  wire [2:2]gpio3_tri_t_2;
  wire [20:20]gpio3_tri_t_20;
  wire [21:21]gpio3_tri_t_21;
  wire [22:22]gpio3_tri_t_22;
  wire [23:23]gpio3_tri_t_23;
  wire [24:24]gpio3_tri_t_24;
  wire [3:3]gpio3_tri_t_3;
  wire [4:4]gpio3_tri_t_4;
  wire [5:5]gpio3_tri_t_5;
  wire [6:6]gpio3_tri_t_6;
  wire [7:7]gpio3_tri_t_7;
  wire [8:8]gpio3_tri_t_8;
  wire [9:9]gpio3_tri_t_9;

  base_block_design base_block_design_i
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
        .GPIO0_tri_i({gpio0_tri_i_24,gpio0_tri_i_23,gpio0_tri_i_22,gpio0_tri_i_21,gpio0_tri_i_20,gpio0_tri_i_19,gpio0_tri_i_18,gpio0_tri_i_17,gpio0_tri_i_16,gpio0_tri_i_15,gpio0_tri_i_14,gpio0_tri_i_13,gpio0_tri_i_12,gpio0_tri_i_11,gpio0_tri_i_10,gpio0_tri_i_9,gpio0_tri_i_8,gpio0_tri_i_7,gpio0_tri_i_6,gpio0_tri_i_5,gpio0_tri_i_4,gpio0_tri_i_3,gpio0_tri_i_2,gpio0_tri_i_1,gpio0_tri_i_0}),
        .GPIO0_tri_o({gpio0_tri_o_24,gpio0_tri_o_23,gpio0_tri_o_22,gpio0_tri_o_21,gpio0_tri_o_20,gpio0_tri_o_19,gpio0_tri_o_18,gpio0_tri_o_17,gpio0_tri_o_16,gpio0_tri_o_15,gpio0_tri_o_14,gpio0_tri_o_13,gpio0_tri_o_12,gpio0_tri_o_11,gpio0_tri_o_10,gpio0_tri_o_9,gpio0_tri_o_8,gpio0_tri_o_7,gpio0_tri_o_6,gpio0_tri_o_5,gpio0_tri_o_4,gpio0_tri_o_3,gpio0_tri_o_2,gpio0_tri_o_1,gpio0_tri_o_0}),
        .GPIO0_tri_t({gpio0_tri_t_24,gpio0_tri_t_23,gpio0_tri_t_22,gpio0_tri_t_21,gpio0_tri_t_20,gpio0_tri_t_19,gpio0_tri_t_18,gpio0_tri_t_17,gpio0_tri_t_16,gpio0_tri_t_15,gpio0_tri_t_14,gpio0_tri_t_13,gpio0_tri_t_12,gpio0_tri_t_11,gpio0_tri_t_10,gpio0_tri_t_9,gpio0_tri_t_8,gpio0_tri_t_7,gpio0_tri_t_6,gpio0_tri_t_5,gpio0_tri_t_4,gpio0_tri_t_3,gpio0_tri_t_2,gpio0_tri_t_1,gpio0_tri_t_0}),
        .GPIO1_tri_i({gpio1_tri_i_24,gpio1_tri_i_23,gpio1_tri_i_22,gpio1_tri_i_21,gpio1_tri_i_20,gpio1_tri_i_19,gpio1_tri_i_18,gpio1_tri_i_17,gpio1_tri_i_16,gpio1_tri_i_15,gpio1_tri_i_14,gpio1_tri_i_13,gpio1_tri_i_12,gpio1_tri_i_11,gpio1_tri_i_10,gpio1_tri_i_9,gpio1_tri_i_8,gpio1_tri_i_7,gpio1_tri_i_6,gpio1_tri_i_5,gpio1_tri_i_4,gpio1_tri_i_3,gpio1_tri_i_2,gpio1_tri_i_1,gpio1_tri_i_0}),
        .GPIO1_tri_o({gpio1_tri_o_24,gpio1_tri_o_23,gpio1_tri_o_22,gpio1_tri_o_21,gpio1_tri_o_20,gpio1_tri_o_19,gpio1_tri_o_18,gpio1_tri_o_17,gpio1_tri_o_16,gpio1_tri_o_15,gpio1_tri_o_14,gpio1_tri_o_13,gpio1_tri_o_12,gpio1_tri_o_11,gpio1_tri_o_10,gpio1_tri_o_9,gpio1_tri_o_8,gpio1_tri_o_7,gpio1_tri_o_6,gpio1_tri_o_5,gpio1_tri_o_4,gpio1_tri_o_3,gpio1_tri_o_2,gpio1_tri_o_1,gpio1_tri_o_0}),
        .GPIO1_tri_t({gpio1_tri_t_24,gpio1_tri_t_23,gpio1_tri_t_22,gpio1_tri_t_21,gpio1_tri_t_20,gpio1_tri_t_19,gpio1_tri_t_18,gpio1_tri_t_17,gpio1_tri_t_16,gpio1_tri_t_15,gpio1_tri_t_14,gpio1_tri_t_13,gpio1_tri_t_12,gpio1_tri_t_11,gpio1_tri_t_10,gpio1_tri_t_9,gpio1_tri_t_8,gpio1_tri_t_7,gpio1_tri_t_6,gpio1_tri_t_5,gpio1_tri_t_4,gpio1_tri_t_3,gpio1_tri_t_2,gpio1_tri_t_1,gpio1_tri_t_0}),
        .GPIO2_tri_i({gpio2_tri_i_24,gpio2_tri_i_23,gpio2_tri_i_22,gpio2_tri_i_21,gpio2_tri_i_20,gpio2_tri_i_19,gpio2_tri_i_18,gpio2_tri_i_17,gpio2_tri_i_16,gpio2_tri_i_15,gpio2_tri_i_14,gpio2_tri_i_13,gpio2_tri_i_12,gpio2_tri_i_11,gpio2_tri_i_10,gpio2_tri_i_9,gpio2_tri_i_8,gpio2_tri_i_7,gpio2_tri_i_6,gpio2_tri_i_5,gpio2_tri_i_4,gpio2_tri_i_3,gpio2_tri_i_2,gpio2_tri_i_1,gpio2_tri_i_0}),
        .GPIO2_tri_o({gpio2_tri_o_24,gpio2_tri_o_23,gpio2_tri_o_22,gpio2_tri_o_21,gpio2_tri_o_20,gpio2_tri_o_19,gpio2_tri_o_18,gpio2_tri_o_17,gpio2_tri_o_16,gpio2_tri_o_15,gpio2_tri_o_14,gpio2_tri_o_13,gpio2_tri_o_12,gpio2_tri_o_11,gpio2_tri_o_10,gpio2_tri_o_9,gpio2_tri_o_8,gpio2_tri_o_7,gpio2_tri_o_6,gpio2_tri_o_5,gpio2_tri_o_4,gpio2_tri_o_3,gpio2_tri_o_2,gpio2_tri_o_1,gpio2_tri_o_0}),
        .GPIO2_tri_t({gpio2_tri_t_24,gpio2_tri_t_23,gpio2_tri_t_22,gpio2_tri_t_21,gpio2_tri_t_20,gpio2_tri_t_19,gpio2_tri_t_18,gpio2_tri_t_17,gpio2_tri_t_16,gpio2_tri_t_15,gpio2_tri_t_14,gpio2_tri_t_13,gpio2_tri_t_12,gpio2_tri_t_11,gpio2_tri_t_10,gpio2_tri_t_9,gpio2_tri_t_8,gpio2_tri_t_7,gpio2_tri_t_6,gpio2_tri_t_5,gpio2_tri_t_4,gpio2_tri_t_3,gpio2_tri_t_2,gpio2_tri_t_1,gpio2_tri_t_0}),
        .GPIO3_tri_i({gpio3_tri_i_24,gpio3_tri_i_23,gpio3_tri_i_22,gpio3_tri_i_21,gpio3_tri_i_20,gpio3_tri_i_19,gpio3_tri_i_18,gpio3_tri_i_17,gpio3_tri_i_16,gpio3_tri_i_15,gpio3_tri_i_14,gpio3_tri_i_13,gpio3_tri_i_12,gpio3_tri_i_11,gpio3_tri_i_10,gpio3_tri_i_9,gpio3_tri_i_8,gpio3_tri_i_7,gpio3_tri_i_6,gpio3_tri_i_5,gpio3_tri_i_4,gpio3_tri_i_3,gpio3_tri_i_2,gpio3_tri_i_1,gpio3_tri_i_0}),
        .GPIO3_tri_o({gpio3_tri_o_24,gpio3_tri_o_23,gpio3_tri_o_22,gpio3_tri_o_21,gpio3_tri_o_20,gpio3_tri_o_19,gpio3_tri_o_18,gpio3_tri_o_17,gpio3_tri_o_16,gpio3_tri_o_15,gpio3_tri_o_14,gpio3_tri_o_13,gpio3_tri_o_12,gpio3_tri_o_11,gpio3_tri_o_10,gpio3_tri_o_9,gpio3_tri_o_8,gpio3_tri_o_7,gpio3_tri_o_6,gpio3_tri_o_5,gpio3_tri_o_4,gpio3_tri_o_3,gpio3_tri_o_2,gpio3_tri_o_1,gpio3_tri_o_0}),
        .GPIO3_tri_t({gpio3_tri_t_24,gpio3_tri_t_23,gpio3_tri_t_22,gpio3_tri_t_21,gpio3_tri_t_20,gpio3_tri_t_19,gpio3_tri_t_18,gpio3_tri_t_17,gpio3_tri_t_16,gpio3_tri_t_15,gpio3_tri_t_14,gpio3_tri_t_13,gpio3_tri_t_12,gpio3_tri_t_11,gpio3_tri_t_10,gpio3_tri_t_9,gpio3_tri_t_8,gpio3_tri_t_7,gpio3_tri_t_6,gpio3_tri_t_5,gpio3_tri_t_4,gpio3_tri_t_3,gpio3_tri_t_2,gpio3_tri_t_1,gpio3_tri_t_0}));
  IOBUF gpio0_tri_iobuf_0
       (.I(gpio0_tri_o_0),
        .IO(gpio0_tri_io[0]),
        .O(gpio0_tri_i_0),
        .T(gpio0_tri_t_0));
  IOBUF gpio0_tri_iobuf_1
       (.I(gpio0_tri_o_1),
        .IO(gpio0_tri_io[1]),
        .O(gpio0_tri_i_1),
        .T(gpio0_tri_t_1));
  IOBUF gpio0_tri_iobuf_10
       (.I(gpio0_tri_o_10),
        .IO(gpio0_tri_io[10]),
        .O(gpio0_tri_i_10),
        .T(gpio0_tri_t_10));
  IOBUF gpio0_tri_iobuf_11
       (.I(gpio0_tri_o_11),
        .IO(gpio0_tri_io[11]),
        .O(gpio0_tri_i_11),
        .T(gpio0_tri_t_11));
  IOBUF gpio0_tri_iobuf_12
       (.I(gpio0_tri_o_12),
        .IO(gpio0_tri_io[12]),
        .O(gpio0_tri_i_12),
        .T(gpio0_tri_t_12));
  IOBUF gpio0_tri_iobuf_13
       (.I(gpio0_tri_o_13),
        .IO(gpio0_tri_io[13]),
        .O(gpio0_tri_i_13),
        .T(gpio0_tri_t_13));
  IOBUF gpio0_tri_iobuf_14
       (.I(gpio0_tri_o_14),
        .IO(gpio0_tri_io[14]),
        .O(gpio0_tri_i_14),
        .T(gpio0_tri_t_14));
  IOBUF gpio0_tri_iobuf_15
       (.I(gpio0_tri_o_15),
        .IO(gpio0_tri_io[15]),
        .O(gpio0_tri_i_15),
        .T(gpio0_tri_t_15));
  IOBUF gpio0_tri_iobuf_16
       (.I(gpio0_tri_o_16),
        .IO(gpio0_tri_io[16]),
        .O(gpio0_tri_i_16),
        .T(gpio0_tri_t_16));
  IOBUF gpio0_tri_iobuf_17
       (.I(gpio0_tri_o_17),
        .IO(gpio0_tri_io[17]),
        .O(gpio0_tri_i_17),
        .T(gpio0_tri_t_17));
  IOBUF gpio0_tri_iobuf_18
       (.I(gpio0_tri_o_18),
        .IO(gpio0_tri_io[18]),
        .O(gpio0_tri_i_18),
        .T(gpio0_tri_t_18));
  IOBUF gpio0_tri_iobuf_19
       (.I(gpio0_tri_o_19),
        .IO(gpio0_tri_io[19]),
        .O(gpio0_tri_i_19),
        .T(gpio0_tri_t_19));
  IOBUF gpio0_tri_iobuf_2
       (.I(gpio0_tri_o_2),
        .IO(gpio0_tri_io[2]),
        .O(gpio0_tri_i_2),
        .T(gpio0_tri_t_2));
  IOBUF gpio0_tri_iobuf_20
       (.I(gpio0_tri_o_20),
        .IO(gpio0_tri_io[20]),
        .O(gpio0_tri_i_20),
        .T(gpio0_tri_t_20));
  IOBUF gpio0_tri_iobuf_21
       (.I(gpio0_tri_o_21),
        .IO(gpio0_tri_io[21]),
        .O(gpio0_tri_i_21),
        .T(gpio0_tri_t_21));
  IOBUF gpio0_tri_iobuf_22
       (.I(gpio0_tri_o_22),
        .IO(gpio0_tri_io[22]),
        .O(gpio0_tri_i_22),
        .T(gpio0_tri_t_22));
  IOBUF gpio0_tri_iobuf_23
       (.I(gpio0_tri_o_23),
        .IO(gpio0_tri_io[23]),
        .O(gpio0_tri_i_23),
        .T(gpio0_tri_t_23));
  IOBUF gpio0_tri_iobuf_24
       (.I(gpio0_tri_o_24),
        .IO(gpio0_tri_io[24]),
        .O(gpio0_tri_i_24),
        .T(gpio0_tri_t_24));
  IOBUF gpio0_tri_iobuf_3
       (.I(gpio0_tri_o_3),
        .IO(gpio0_tri_io[3]),
        .O(gpio0_tri_i_3),
        .T(gpio0_tri_t_3));
  IOBUF gpio0_tri_iobuf_4
       (.I(gpio0_tri_o_4),
        .IO(gpio0_tri_io[4]),
        .O(gpio0_tri_i_4),
        .T(gpio0_tri_t_4));
  IOBUF gpio0_tri_iobuf_5
       (.I(gpio0_tri_o_5),
        .IO(gpio0_tri_io[5]),
        .O(gpio0_tri_i_5),
        .T(gpio0_tri_t_5));
  IOBUF gpio0_tri_iobuf_6
       (.I(gpio0_tri_o_6),
        .IO(gpio0_tri_io[6]),
        .O(gpio0_tri_i_6),
        .T(gpio0_tri_t_6));
  IOBUF gpio0_tri_iobuf_7
       (.I(gpio0_tri_o_7),
        .IO(gpio0_tri_io[7]),
        .O(gpio0_tri_i_7),
        .T(gpio0_tri_t_7));
  IOBUF gpio0_tri_iobuf_8
       (.I(gpio0_tri_o_8),
        .IO(gpio0_tri_io[8]),
        .O(gpio0_tri_i_8),
        .T(gpio0_tri_t_8));
  IOBUF gpio0_tri_iobuf_9
       (.I(gpio0_tri_o_9),
        .IO(gpio0_tri_io[9]),
        .O(gpio0_tri_i_9),
        .T(gpio0_tri_t_9));
  IOBUF gpio1_tri_iobuf_0
       (.I(gpio1_tri_o_0),
        .IO(gpio1_tri_io[0]),
        .O(gpio1_tri_i_0),
        .T(gpio1_tri_t_0));
  IOBUF gpio1_tri_iobuf_1
       (.I(gpio1_tri_o_1),
        .IO(gpio1_tri_io[1]),
        .O(gpio1_tri_i_1),
        .T(gpio1_tri_t_1));
  IOBUF gpio1_tri_iobuf_10
       (.I(gpio1_tri_o_10),
        .IO(gpio1_tri_io[10]),
        .O(gpio1_tri_i_10),
        .T(gpio1_tri_t_10));
  IOBUF gpio1_tri_iobuf_11
       (.I(gpio1_tri_o_11),
        .IO(gpio1_tri_io[11]),
        .O(gpio1_tri_i_11),
        .T(gpio1_tri_t_11));
  IOBUF gpio1_tri_iobuf_12
       (.I(gpio1_tri_o_12),
        .IO(gpio1_tri_io[12]),
        .O(gpio1_tri_i_12),
        .T(gpio1_tri_t_12));
  IOBUF gpio1_tri_iobuf_13
       (.I(gpio1_tri_o_13),
        .IO(gpio1_tri_io[13]),
        .O(gpio1_tri_i_13),
        .T(gpio1_tri_t_13));
  IOBUF gpio1_tri_iobuf_14
       (.I(gpio1_tri_o_14),
        .IO(gpio1_tri_io[14]),
        .O(gpio1_tri_i_14),
        .T(gpio1_tri_t_14));
  IOBUF gpio1_tri_iobuf_15
       (.I(gpio1_tri_o_15),
        .IO(gpio1_tri_io[15]),
        .O(gpio1_tri_i_15),
        .T(gpio1_tri_t_15));
  IOBUF gpio1_tri_iobuf_16
       (.I(gpio1_tri_o_16),
        .IO(gpio1_tri_io[16]),
        .O(gpio1_tri_i_16),
        .T(gpio1_tri_t_16));
  IOBUF gpio1_tri_iobuf_17
       (.I(gpio1_tri_o_17),
        .IO(gpio1_tri_io[17]),
        .O(gpio1_tri_i_17),
        .T(gpio1_tri_t_17));
  IOBUF gpio1_tri_iobuf_18
       (.I(gpio1_tri_o_18),
        .IO(gpio1_tri_io[18]),
        .O(gpio1_tri_i_18),
        .T(gpio1_tri_t_18));
  IOBUF gpio1_tri_iobuf_19
       (.I(gpio1_tri_o_19),
        .IO(gpio1_tri_io[19]),
        .O(gpio1_tri_i_19),
        .T(gpio1_tri_t_19));
  IOBUF gpio1_tri_iobuf_2
       (.I(gpio1_tri_o_2),
        .IO(gpio1_tri_io[2]),
        .O(gpio1_tri_i_2),
        .T(gpio1_tri_t_2));
  IOBUF gpio1_tri_iobuf_20
       (.I(gpio1_tri_o_20),
        .IO(gpio1_tri_io[20]),
        .O(gpio1_tri_i_20),
        .T(gpio1_tri_t_20));
  IOBUF gpio1_tri_iobuf_21
       (.I(gpio1_tri_o_21),
        .IO(gpio1_tri_io[21]),
        .O(gpio1_tri_i_21),
        .T(gpio1_tri_t_21));
  IOBUF gpio1_tri_iobuf_22
       (.I(gpio1_tri_o_22),
        .IO(gpio1_tri_io[22]),
        .O(gpio1_tri_i_22),
        .T(gpio1_tri_t_22));
  IOBUF gpio1_tri_iobuf_23
       (.I(gpio1_tri_o_23),
        .IO(gpio1_tri_io[23]),
        .O(gpio1_tri_i_23),
        .T(gpio1_tri_t_23));
  IOBUF gpio1_tri_iobuf_24
       (.I(gpio1_tri_o_24),
        .IO(gpio1_tri_io[24]),
        .O(gpio1_tri_i_24),
        .T(gpio1_tri_t_24));
  IOBUF gpio1_tri_iobuf_3
       (.I(gpio1_tri_o_3),
        .IO(gpio1_tri_io[3]),
        .O(gpio1_tri_i_3),
        .T(gpio1_tri_t_3));
  IOBUF gpio1_tri_iobuf_4
       (.I(gpio1_tri_o_4),
        .IO(gpio1_tri_io[4]),
        .O(gpio1_tri_i_4),
        .T(gpio1_tri_t_4));
  IOBUF gpio1_tri_iobuf_5
       (.I(gpio1_tri_o_5),
        .IO(gpio1_tri_io[5]),
        .O(gpio1_tri_i_5),
        .T(gpio1_tri_t_5));
  IOBUF gpio1_tri_iobuf_6
       (.I(gpio1_tri_o_6),
        .IO(gpio1_tri_io[6]),
        .O(gpio1_tri_i_6),
        .T(gpio1_tri_t_6));
  IOBUF gpio1_tri_iobuf_7
       (.I(gpio1_tri_o_7),
        .IO(gpio1_tri_io[7]),
        .O(gpio1_tri_i_7),
        .T(gpio1_tri_t_7));
  IOBUF gpio1_tri_iobuf_8
       (.I(gpio1_tri_o_8),
        .IO(gpio1_tri_io[8]),
        .O(gpio1_tri_i_8),
        .T(gpio1_tri_t_8));
  IOBUF gpio1_tri_iobuf_9
       (.I(gpio1_tri_o_9),
        .IO(gpio1_tri_io[9]),
        .O(gpio1_tri_i_9),
        .T(gpio1_tri_t_9));
  IOBUF gpio2_tri_iobuf_0
       (.I(gpio2_tri_o_0),
        .IO(gpio2_tri_io[0]),
        .O(gpio2_tri_i_0),
        .T(gpio2_tri_t_0));
  IOBUF gpio2_tri_iobuf_1
       (.I(gpio2_tri_o_1),
        .IO(gpio2_tri_io[1]),
        .O(gpio2_tri_i_1),
        .T(gpio2_tri_t_1));
  IOBUF gpio2_tri_iobuf_10
       (.I(gpio2_tri_o_10),
        .IO(gpio2_tri_io[10]),
        .O(gpio2_tri_i_10),
        .T(gpio2_tri_t_10));
  IOBUF gpio2_tri_iobuf_11
       (.I(gpio2_tri_o_11),
        .IO(gpio2_tri_io[11]),
        .O(gpio2_tri_i_11),
        .T(gpio2_tri_t_11));
  IOBUF gpio2_tri_iobuf_12
       (.I(gpio2_tri_o_12),
        .IO(gpio2_tri_io[12]),
        .O(gpio2_tri_i_12),
        .T(gpio2_tri_t_12));
  IOBUF gpio2_tri_iobuf_13
       (.I(gpio2_tri_o_13),
        .IO(gpio2_tri_io[13]),
        .O(gpio2_tri_i_13),
        .T(gpio2_tri_t_13));
  IOBUF gpio2_tri_iobuf_14
       (.I(gpio2_tri_o_14),
        .IO(gpio2_tri_io[14]),
        .O(gpio2_tri_i_14),
        .T(gpio2_tri_t_14));
  IOBUF gpio2_tri_iobuf_15
       (.I(gpio2_tri_o_15),
        .IO(gpio2_tri_io[15]),
        .O(gpio2_tri_i_15),
        .T(gpio2_tri_t_15));
  IOBUF gpio2_tri_iobuf_16
       (.I(gpio2_tri_o_16),
        .IO(gpio2_tri_io[16]),
        .O(gpio2_tri_i_16),
        .T(gpio2_tri_t_16));
  IOBUF gpio2_tri_iobuf_17
       (.I(gpio2_tri_o_17),
        .IO(gpio2_tri_io[17]),
        .O(gpio2_tri_i_17),
        .T(gpio2_tri_t_17));
  IOBUF gpio2_tri_iobuf_18
       (.I(gpio2_tri_o_18),
        .IO(gpio2_tri_io[18]),
        .O(gpio2_tri_i_18),
        .T(gpio2_tri_t_18));
  IOBUF gpio2_tri_iobuf_19
       (.I(gpio2_tri_o_19),
        .IO(gpio2_tri_io[19]),
        .O(gpio2_tri_i_19),
        .T(gpio2_tri_t_19));
  IOBUF gpio2_tri_iobuf_2
       (.I(gpio2_tri_o_2),
        .IO(gpio2_tri_io[2]),
        .O(gpio2_tri_i_2),
        .T(gpio2_tri_t_2));
  IOBUF gpio2_tri_iobuf_20
       (.I(gpio2_tri_o_20),
        .IO(gpio2_tri_io[20]),
        .O(gpio2_tri_i_20),
        .T(gpio2_tri_t_20));
  IOBUF gpio2_tri_iobuf_21
       (.I(gpio2_tri_o_21),
        .IO(gpio2_tri_io[21]),
        .O(gpio2_tri_i_21),
        .T(gpio2_tri_t_21));
  IOBUF gpio2_tri_iobuf_22
       (.I(gpio2_tri_o_22),
        .IO(gpio2_tri_io[22]),
        .O(gpio2_tri_i_22),
        .T(gpio2_tri_t_22));
  IOBUF gpio2_tri_iobuf_23
       (.I(gpio2_tri_o_23),
        .IO(gpio2_tri_io[23]),
        .O(gpio2_tri_i_23),
        .T(gpio2_tri_t_23));
  IOBUF gpio2_tri_iobuf_24
       (.I(gpio2_tri_o_24),
        .IO(gpio2_tri_io[24]),
        .O(gpio2_tri_i_24),
        .T(gpio2_tri_t_24));
  IOBUF gpio2_tri_iobuf_3
       (.I(gpio2_tri_o_3),
        .IO(gpio2_tri_io[3]),
        .O(gpio2_tri_i_3),
        .T(gpio2_tri_t_3));
  IOBUF gpio2_tri_iobuf_4
       (.I(gpio2_tri_o_4),
        .IO(gpio2_tri_io[4]),
        .O(gpio2_tri_i_4),
        .T(gpio2_tri_t_4));
  IOBUF gpio2_tri_iobuf_5
       (.I(gpio2_tri_o_5),
        .IO(gpio2_tri_io[5]),
        .O(gpio2_tri_i_5),
        .T(gpio2_tri_t_5));
  IOBUF gpio2_tri_iobuf_6
       (.I(gpio2_tri_o_6),
        .IO(gpio2_tri_io[6]),
        .O(gpio2_tri_i_6),
        .T(gpio2_tri_t_6));
  IOBUF gpio2_tri_iobuf_7
       (.I(gpio2_tri_o_7),
        .IO(gpio2_tri_io[7]),
        .O(gpio2_tri_i_7),
        .T(gpio2_tri_t_7));
  IOBUF gpio2_tri_iobuf_8
       (.I(gpio2_tri_o_8),
        .IO(gpio2_tri_io[8]),
        .O(gpio2_tri_i_8),
        .T(gpio2_tri_t_8));
  IOBUF gpio2_tri_iobuf_9
       (.I(gpio2_tri_o_9),
        .IO(gpio2_tri_io[9]),
        .O(gpio2_tri_i_9),
        .T(gpio2_tri_t_9));
  IOBUF gpio3_tri_iobuf_0
       (.I(gpio3_tri_o_0),
        .IO(gpio3_tri_io[0]),
        .O(gpio3_tri_i_0),
        .T(gpio3_tri_t_0));
  IOBUF gpio3_tri_iobuf_1
       (.I(gpio3_tri_o_1),
        .IO(gpio3_tri_io[1]),
        .O(gpio3_tri_i_1),
        .T(gpio3_tri_t_1));
  IOBUF gpio3_tri_iobuf_10
       (.I(gpio3_tri_o_10),
        .IO(gpio3_tri_io[10]),
        .O(gpio3_tri_i_10),
        .T(gpio3_tri_t_10));
  IOBUF gpio3_tri_iobuf_11
       (.I(gpio3_tri_o_11),
        .IO(gpio3_tri_io[11]),
        .O(gpio3_tri_i_11),
        .T(gpio3_tri_t_11));
  IOBUF gpio3_tri_iobuf_12
       (.I(gpio3_tri_o_12),
        .IO(gpio3_tri_io[12]),
        .O(gpio3_tri_i_12),
        .T(gpio3_tri_t_12));
  IOBUF gpio3_tri_iobuf_13
       (.I(gpio3_tri_o_13),
        .IO(gpio3_tri_io[13]),
        .O(gpio3_tri_i_13),
        .T(gpio3_tri_t_13));
  IOBUF gpio3_tri_iobuf_14
       (.I(gpio3_tri_o_14),
        .IO(gpio3_tri_io[14]),
        .O(gpio3_tri_i_14),
        .T(gpio3_tri_t_14));
  IOBUF gpio3_tri_iobuf_15
       (.I(gpio3_tri_o_15),
        .IO(gpio3_tri_io[15]),
        .O(gpio3_tri_i_15),
        .T(gpio3_tri_t_15));
  IOBUF gpio3_tri_iobuf_16
       (.I(gpio3_tri_o_16),
        .IO(gpio3_tri_io[16]),
        .O(gpio3_tri_i_16),
        .T(gpio3_tri_t_16));
  IOBUF gpio3_tri_iobuf_17
       (.I(gpio3_tri_o_17),
        .IO(gpio3_tri_io[17]),
        .O(gpio3_tri_i_17),
        .T(gpio3_tri_t_17));
  IOBUF gpio3_tri_iobuf_18
       (.I(gpio3_tri_o_18),
        .IO(gpio3_tri_io[18]),
        .O(gpio3_tri_i_18),
        .T(gpio3_tri_t_18));
  IOBUF gpio3_tri_iobuf_19
       (.I(gpio3_tri_o_19),
        .IO(gpio3_tri_io[19]),
        .O(gpio3_tri_i_19),
        .T(gpio3_tri_t_19));
  IOBUF gpio3_tri_iobuf_2
       (.I(gpio3_tri_o_2),
        .IO(gpio3_tri_io[2]),
        .O(gpio3_tri_i_2),
        .T(gpio3_tri_t_2));
  IOBUF gpio3_tri_iobuf_20
       (.I(gpio3_tri_o_20),
        .IO(gpio3_tri_io[20]),
        .O(gpio3_tri_i_20),
        .T(gpio3_tri_t_20));
  IOBUF gpio3_tri_iobuf_21
       (.I(gpio3_tri_o_21),
        .IO(gpio3_tri_io[21]),
        .O(gpio3_tri_i_21),
        .T(gpio3_tri_t_21));
  IOBUF gpio3_tri_iobuf_22
       (.I(gpio3_tri_o_22),
        .IO(gpio3_tri_io[22]),
        .O(gpio3_tri_i_22),
        .T(gpio3_tri_t_22));
  IOBUF gpio3_tri_iobuf_23
       (.I(gpio3_tri_o_23),
        .IO(gpio3_tri_io[23]),
        .O(gpio3_tri_i_23),
        .T(gpio3_tri_t_23));
  IOBUF gpio3_tri_iobuf_24
       (.I(gpio3_tri_o_24),
        .IO(gpio3_tri_io[24]),
        .O(gpio3_tri_i_24),
        .T(gpio3_tri_t_24));
  IOBUF gpio3_tri_iobuf_3
       (.I(gpio3_tri_o_3),
        .IO(gpio3_tri_io[3]),
        .O(gpio3_tri_i_3),
        .T(gpio3_tri_t_3));
  IOBUF gpio3_tri_iobuf_4
       (.I(gpio3_tri_o_4),
        .IO(gpio3_tri_io[4]),
        .O(gpio3_tri_i_4),
        .T(gpio3_tri_t_4));
  IOBUF gpio3_tri_iobuf_5
       (.I(gpio3_tri_o_5),
        .IO(gpio3_tri_io[5]),
        .O(gpio3_tri_i_5),
        .T(gpio3_tri_t_5));
  IOBUF gpio3_tri_iobuf_6
       (.I(gpio3_tri_o_6),
        .IO(gpio3_tri_io[6]),
        .O(gpio3_tri_i_6),
        .T(gpio3_tri_t_6));
  IOBUF gpio3_tri_iobuf_7
       (.I(gpio3_tri_o_7),
        .IO(gpio3_tri_io[7]),
        .O(gpio3_tri_i_7),
        .T(gpio3_tri_t_7));
  IOBUF gpio3_tri_iobuf_8
       (.I(gpio3_tri_o_8),
        .IO(gpio3_tri_io[8]),
        .O(gpio3_tri_i_8),
        .T(gpio3_tri_t_8));
  IOBUF gpio3_tri_iobuf_9
       (.I(gpio3_tri_o_9),
        .IO(gpio3_tri_io[9]),
        .O(gpio3_tri_i_9),
        .T(gpio3_tri_t_9));
endmodule
