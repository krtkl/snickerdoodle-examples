//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
//Date        : Mon Nov 19 18:38:10 2018
//Host        : WIN-MJ2I8SI0RJV running 64-bit major release  (build 9200)
//Command     : generate_target base_wrapper.bd
//Design      : base_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module base_wrapper
   (AXI_GPIO_tri_io,
    AXI_IIC_scl_io,
    AXI_IIC_sda_io,
    AXI_SPI_io0_io,
    AXI_SPI_io1_io,
    AXI_SPI_sck_io,
    AXI_SPI_ss_io,
    AXI_UART_rxd,
    AXI_UART_txd,
    DDR_addr,
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
    EMIO_GPIO_tri_io,
    EMIO_IIC_scl_io,
    EMIO_IIC_sda_io,
    EMIO_SPI_io0_o,
    EMIO_SPI_io1_i,
    EMIO_SPI_sck_o,
    EMIO_SPI_ss_o,
    EMIO_UART_rxd,
    EMIO_UART_txd,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  inout [24:0]AXI_GPIO_tri_io;
  inout AXI_IIC_scl_io;
  inout AXI_IIC_sda_io;
  inout AXI_SPI_io0_io;
  inout AXI_SPI_io1_io;
  inout AXI_SPI_sck_io;
  inout [0:0]AXI_SPI_ss_io;
  input AXI_UART_rxd;
  output AXI_UART_txd;
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
  inout [24:0]EMIO_GPIO_tri_io;
  inout EMIO_IIC_scl_io;
  inout EMIO_IIC_sda_io;
  output EMIO_SPI_io0_o;
  input EMIO_SPI_io1_i;
  output EMIO_SPI_sck_o;
  output EMIO_SPI_ss_o;
  input EMIO_UART_rxd;
  output EMIO_UART_txd;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  wire [0:0]AXI_GPIO_tri_i_0;
  wire [1:1]AXI_GPIO_tri_i_1;
  wire [10:10]AXI_GPIO_tri_i_10;
  wire [11:11]AXI_GPIO_tri_i_11;
  wire [12:12]AXI_GPIO_tri_i_12;
  wire [13:13]AXI_GPIO_tri_i_13;
  wire [14:14]AXI_GPIO_tri_i_14;
  wire [15:15]AXI_GPIO_tri_i_15;
  wire [16:16]AXI_GPIO_tri_i_16;
  wire [17:17]AXI_GPIO_tri_i_17;
  wire [18:18]AXI_GPIO_tri_i_18;
  wire [19:19]AXI_GPIO_tri_i_19;
  wire [2:2]AXI_GPIO_tri_i_2;
  wire [20:20]AXI_GPIO_tri_i_20;
  wire [21:21]AXI_GPIO_tri_i_21;
  wire [22:22]AXI_GPIO_tri_i_22;
  wire [23:23]AXI_GPIO_tri_i_23;
  wire [24:24]AXI_GPIO_tri_i_24;
  wire [3:3]AXI_GPIO_tri_i_3;
  wire [4:4]AXI_GPIO_tri_i_4;
  wire [5:5]AXI_GPIO_tri_i_5;
  wire [6:6]AXI_GPIO_tri_i_6;
  wire [7:7]AXI_GPIO_tri_i_7;
  wire [8:8]AXI_GPIO_tri_i_8;
  wire [9:9]AXI_GPIO_tri_i_9;
  wire [0:0]AXI_GPIO_tri_io_0;
  wire [1:1]AXI_GPIO_tri_io_1;
  wire [10:10]AXI_GPIO_tri_io_10;
  wire [11:11]AXI_GPIO_tri_io_11;
  wire [12:12]AXI_GPIO_tri_io_12;
  wire [13:13]AXI_GPIO_tri_io_13;
  wire [14:14]AXI_GPIO_tri_io_14;
  wire [15:15]AXI_GPIO_tri_io_15;
  wire [16:16]AXI_GPIO_tri_io_16;
  wire [17:17]AXI_GPIO_tri_io_17;
  wire [18:18]AXI_GPIO_tri_io_18;
  wire [19:19]AXI_GPIO_tri_io_19;
  wire [2:2]AXI_GPIO_tri_io_2;
  wire [20:20]AXI_GPIO_tri_io_20;
  wire [21:21]AXI_GPIO_tri_io_21;
  wire [22:22]AXI_GPIO_tri_io_22;
  wire [23:23]AXI_GPIO_tri_io_23;
  wire [24:24]AXI_GPIO_tri_io_24;
  wire [3:3]AXI_GPIO_tri_io_3;
  wire [4:4]AXI_GPIO_tri_io_4;
  wire [5:5]AXI_GPIO_tri_io_5;
  wire [6:6]AXI_GPIO_tri_io_6;
  wire [7:7]AXI_GPIO_tri_io_7;
  wire [8:8]AXI_GPIO_tri_io_8;
  wire [9:9]AXI_GPIO_tri_io_9;
  wire [0:0]AXI_GPIO_tri_o_0;
  wire [1:1]AXI_GPIO_tri_o_1;
  wire [10:10]AXI_GPIO_tri_o_10;
  wire [11:11]AXI_GPIO_tri_o_11;
  wire [12:12]AXI_GPIO_tri_o_12;
  wire [13:13]AXI_GPIO_tri_o_13;
  wire [14:14]AXI_GPIO_tri_o_14;
  wire [15:15]AXI_GPIO_tri_o_15;
  wire [16:16]AXI_GPIO_tri_o_16;
  wire [17:17]AXI_GPIO_tri_o_17;
  wire [18:18]AXI_GPIO_tri_o_18;
  wire [19:19]AXI_GPIO_tri_o_19;
  wire [2:2]AXI_GPIO_tri_o_2;
  wire [20:20]AXI_GPIO_tri_o_20;
  wire [21:21]AXI_GPIO_tri_o_21;
  wire [22:22]AXI_GPIO_tri_o_22;
  wire [23:23]AXI_GPIO_tri_o_23;
  wire [24:24]AXI_GPIO_tri_o_24;
  wire [3:3]AXI_GPIO_tri_o_3;
  wire [4:4]AXI_GPIO_tri_o_4;
  wire [5:5]AXI_GPIO_tri_o_5;
  wire [6:6]AXI_GPIO_tri_o_6;
  wire [7:7]AXI_GPIO_tri_o_7;
  wire [8:8]AXI_GPIO_tri_o_8;
  wire [9:9]AXI_GPIO_tri_o_9;
  wire [0:0]AXI_GPIO_tri_t_0;
  wire [1:1]AXI_GPIO_tri_t_1;
  wire [10:10]AXI_GPIO_tri_t_10;
  wire [11:11]AXI_GPIO_tri_t_11;
  wire [12:12]AXI_GPIO_tri_t_12;
  wire [13:13]AXI_GPIO_tri_t_13;
  wire [14:14]AXI_GPIO_tri_t_14;
  wire [15:15]AXI_GPIO_tri_t_15;
  wire [16:16]AXI_GPIO_tri_t_16;
  wire [17:17]AXI_GPIO_tri_t_17;
  wire [18:18]AXI_GPIO_tri_t_18;
  wire [19:19]AXI_GPIO_tri_t_19;
  wire [2:2]AXI_GPIO_tri_t_2;
  wire [20:20]AXI_GPIO_tri_t_20;
  wire [21:21]AXI_GPIO_tri_t_21;
  wire [22:22]AXI_GPIO_tri_t_22;
  wire [23:23]AXI_GPIO_tri_t_23;
  wire [24:24]AXI_GPIO_tri_t_24;
  wire [3:3]AXI_GPIO_tri_t_3;
  wire [4:4]AXI_GPIO_tri_t_4;
  wire [5:5]AXI_GPIO_tri_t_5;
  wire [6:6]AXI_GPIO_tri_t_6;
  wire [7:7]AXI_GPIO_tri_t_7;
  wire [8:8]AXI_GPIO_tri_t_8;
  wire [9:9]AXI_GPIO_tri_t_9;
  wire AXI_IIC_scl_i;
  wire AXI_IIC_scl_io;
  wire AXI_IIC_scl_o;
  wire AXI_IIC_scl_t;
  wire AXI_IIC_sda_i;
  wire AXI_IIC_sda_io;
  wire AXI_IIC_sda_o;
  wire AXI_IIC_sda_t;
  wire AXI_SPI_io0_i;
  wire AXI_SPI_io0_io;
  wire AXI_SPI_io0_o;
  wire AXI_SPI_io0_t;
  wire AXI_SPI_io1_i;
  wire AXI_SPI_io1_io;
  wire AXI_SPI_io1_o;
  wire AXI_SPI_io1_t;
  wire AXI_SPI_sck_i;
  wire AXI_SPI_sck_io;
  wire AXI_SPI_sck_o;
  wire AXI_SPI_sck_t;
  wire [0:0]AXI_SPI_ss_i_0;
  wire [0:0]AXI_SPI_ss_io_0;
  wire [0:0]AXI_SPI_ss_o_0;
  wire AXI_SPI_ss_t;
  wire AXI_UART_rxd;
  wire AXI_UART_txd;
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
  wire [0:0]EMIO_GPIO_tri_i_0;
  wire [1:1]EMIO_GPIO_tri_i_1;
  wire [10:10]EMIO_GPIO_tri_i_10;
  wire [11:11]EMIO_GPIO_tri_i_11;
  wire [12:12]EMIO_GPIO_tri_i_12;
  wire [13:13]EMIO_GPIO_tri_i_13;
  wire [14:14]EMIO_GPIO_tri_i_14;
  wire [15:15]EMIO_GPIO_tri_i_15;
  wire [16:16]EMIO_GPIO_tri_i_16;
  wire [17:17]EMIO_GPIO_tri_i_17;
  wire [18:18]EMIO_GPIO_tri_i_18;
  wire [19:19]EMIO_GPIO_tri_i_19;
  wire [2:2]EMIO_GPIO_tri_i_2;
  wire [20:20]EMIO_GPIO_tri_i_20;
  wire [21:21]EMIO_GPIO_tri_i_21;
  wire [22:22]EMIO_GPIO_tri_i_22;
  wire [23:23]EMIO_GPIO_tri_i_23;
  wire [24:24]EMIO_GPIO_tri_i_24;
  wire [3:3]EMIO_GPIO_tri_i_3;
  wire [4:4]EMIO_GPIO_tri_i_4;
  wire [5:5]EMIO_GPIO_tri_i_5;
  wire [6:6]EMIO_GPIO_tri_i_6;
  wire [7:7]EMIO_GPIO_tri_i_7;
  wire [8:8]EMIO_GPIO_tri_i_8;
  wire [9:9]EMIO_GPIO_tri_i_9;
  wire [0:0]EMIO_GPIO_tri_io_0;
  wire [1:1]EMIO_GPIO_tri_io_1;
  wire [10:10]EMIO_GPIO_tri_io_10;
  wire [11:11]EMIO_GPIO_tri_io_11;
  wire [12:12]EMIO_GPIO_tri_io_12;
  wire [13:13]EMIO_GPIO_tri_io_13;
  wire [14:14]EMIO_GPIO_tri_io_14;
  wire [15:15]EMIO_GPIO_tri_io_15;
  wire [16:16]EMIO_GPIO_tri_io_16;
  wire [17:17]EMIO_GPIO_tri_io_17;
  wire [18:18]EMIO_GPIO_tri_io_18;
  wire [19:19]EMIO_GPIO_tri_io_19;
  wire [2:2]EMIO_GPIO_tri_io_2;
  wire [20:20]EMIO_GPIO_tri_io_20;
  wire [21:21]EMIO_GPIO_tri_io_21;
  wire [22:22]EMIO_GPIO_tri_io_22;
  wire [23:23]EMIO_GPIO_tri_io_23;
  wire [24:24]EMIO_GPIO_tri_io_24;
  wire [3:3]EMIO_GPIO_tri_io_3;
  wire [4:4]EMIO_GPIO_tri_io_4;
  wire [5:5]EMIO_GPIO_tri_io_5;
  wire [6:6]EMIO_GPIO_tri_io_6;
  wire [7:7]EMIO_GPIO_tri_io_7;
  wire [8:8]EMIO_GPIO_tri_io_8;
  wire [9:9]EMIO_GPIO_tri_io_9;
  wire [0:0]EMIO_GPIO_tri_o_0;
  wire [1:1]EMIO_GPIO_tri_o_1;
  wire [10:10]EMIO_GPIO_tri_o_10;
  wire [11:11]EMIO_GPIO_tri_o_11;
  wire [12:12]EMIO_GPIO_tri_o_12;
  wire [13:13]EMIO_GPIO_tri_o_13;
  wire [14:14]EMIO_GPIO_tri_o_14;
  wire [15:15]EMIO_GPIO_tri_o_15;
  wire [16:16]EMIO_GPIO_tri_o_16;
  wire [17:17]EMIO_GPIO_tri_o_17;
  wire [18:18]EMIO_GPIO_tri_o_18;
  wire [19:19]EMIO_GPIO_tri_o_19;
  wire [2:2]EMIO_GPIO_tri_o_2;
  wire [20:20]EMIO_GPIO_tri_o_20;
  wire [21:21]EMIO_GPIO_tri_o_21;
  wire [22:22]EMIO_GPIO_tri_o_22;
  wire [23:23]EMIO_GPIO_tri_o_23;
  wire [24:24]EMIO_GPIO_tri_o_24;
  wire [3:3]EMIO_GPIO_tri_o_3;
  wire [4:4]EMIO_GPIO_tri_o_4;
  wire [5:5]EMIO_GPIO_tri_o_5;
  wire [6:6]EMIO_GPIO_tri_o_6;
  wire [7:7]EMIO_GPIO_tri_o_7;
  wire [8:8]EMIO_GPIO_tri_o_8;
  wire [9:9]EMIO_GPIO_tri_o_9;
  wire [0:0]EMIO_GPIO_tri_t_0;
  wire [1:1]EMIO_GPIO_tri_t_1;
  wire [10:10]EMIO_GPIO_tri_t_10;
  wire [11:11]EMIO_GPIO_tri_t_11;
  wire [12:12]EMIO_GPIO_tri_t_12;
  wire [13:13]EMIO_GPIO_tri_t_13;
  wire [14:14]EMIO_GPIO_tri_t_14;
  wire [15:15]EMIO_GPIO_tri_t_15;
  wire [16:16]EMIO_GPIO_tri_t_16;
  wire [17:17]EMIO_GPIO_tri_t_17;
  wire [18:18]EMIO_GPIO_tri_t_18;
  wire [19:19]EMIO_GPIO_tri_t_19;
  wire [2:2]EMIO_GPIO_tri_t_2;
  wire [20:20]EMIO_GPIO_tri_t_20;
  wire [21:21]EMIO_GPIO_tri_t_21;
  wire [22:22]EMIO_GPIO_tri_t_22;
  wire [23:23]EMIO_GPIO_tri_t_23;
  wire [24:24]EMIO_GPIO_tri_t_24;
  wire [3:3]EMIO_GPIO_tri_t_3;
  wire [4:4]EMIO_GPIO_tri_t_4;
  wire [5:5]EMIO_GPIO_tri_t_5;
  wire [6:6]EMIO_GPIO_tri_t_6;
  wire [7:7]EMIO_GPIO_tri_t_7;
  wire [8:8]EMIO_GPIO_tri_t_8;
  wire [9:9]EMIO_GPIO_tri_t_9;
  wire EMIO_IIC_scl_i;
  wire EMIO_IIC_scl_io;
  wire EMIO_IIC_scl_o;
  wire EMIO_IIC_scl_t;
  wire EMIO_IIC_sda_i;
  wire EMIO_IIC_sda_io;
  wire EMIO_IIC_sda_o;
  wire EMIO_IIC_sda_t;
  wire EMIO_SPI_io0_o;
  wire EMIO_SPI_io1_i;
  wire EMIO_SPI_sck_o;
  wire EMIO_SPI_ss_o;
  wire EMIO_UART_rxd;
  wire EMIO_UART_txd;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;

  IOBUF AXI_GPIO_tri_iobuf_0
       (.I(AXI_GPIO_tri_o_0),
        .IO(AXI_GPIO_tri_io[0]),
        .O(AXI_GPIO_tri_i_0),
        .T(AXI_GPIO_tri_t_0));
  IOBUF AXI_GPIO_tri_iobuf_1
       (.I(AXI_GPIO_tri_o_1),
        .IO(AXI_GPIO_tri_io[1]),
        .O(AXI_GPIO_tri_i_1),
        .T(AXI_GPIO_tri_t_1));
  IOBUF AXI_GPIO_tri_iobuf_10
       (.I(AXI_GPIO_tri_o_10),
        .IO(AXI_GPIO_tri_io[10]),
        .O(AXI_GPIO_tri_i_10),
        .T(AXI_GPIO_tri_t_10));
  IOBUF AXI_GPIO_tri_iobuf_11
       (.I(AXI_GPIO_tri_o_11),
        .IO(AXI_GPIO_tri_io[11]),
        .O(AXI_GPIO_tri_i_11),
        .T(AXI_GPIO_tri_t_11));
  IOBUF AXI_GPIO_tri_iobuf_12
       (.I(AXI_GPIO_tri_o_12),
        .IO(AXI_GPIO_tri_io[12]),
        .O(AXI_GPIO_tri_i_12),
        .T(AXI_GPIO_tri_t_12));
  IOBUF AXI_GPIO_tri_iobuf_13
       (.I(AXI_GPIO_tri_o_13),
        .IO(AXI_GPIO_tri_io[13]),
        .O(AXI_GPIO_tri_i_13),
        .T(AXI_GPIO_tri_t_13));
  IOBUF AXI_GPIO_tri_iobuf_14
       (.I(AXI_GPIO_tri_o_14),
        .IO(AXI_GPIO_tri_io[14]),
        .O(AXI_GPIO_tri_i_14),
        .T(AXI_GPIO_tri_t_14));
  IOBUF AXI_GPIO_tri_iobuf_15
       (.I(AXI_GPIO_tri_o_15),
        .IO(AXI_GPIO_tri_io[15]),
        .O(AXI_GPIO_tri_i_15),
        .T(AXI_GPIO_tri_t_15));
  IOBUF AXI_GPIO_tri_iobuf_16
       (.I(AXI_GPIO_tri_o_16),
        .IO(AXI_GPIO_tri_io[16]),
        .O(AXI_GPIO_tri_i_16),
        .T(AXI_GPIO_tri_t_16));
  IOBUF AXI_GPIO_tri_iobuf_17
       (.I(AXI_GPIO_tri_o_17),
        .IO(AXI_GPIO_tri_io[17]),
        .O(AXI_GPIO_tri_i_17),
        .T(AXI_GPIO_tri_t_17));
  IOBUF AXI_GPIO_tri_iobuf_18
       (.I(AXI_GPIO_tri_o_18),
        .IO(AXI_GPIO_tri_io[18]),
        .O(AXI_GPIO_tri_i_18),
        .T(AXI_GPIO_tri_t_18));
  IOBUF AXI_GPIO_tri_iobuf_19
       (.I(AXI_GPIO_tri_o_19),
        .IO(AXI_GPIO_tri_io[19]),
        .O(AXI_GPIO_tri_i_19),
        .T(AXI_GPIO_tri_t_19));
  IOBUF AXI_GPIO_tri_iobuf_2
       (.I(AXI_GPIO_tri_o_2),
        .IO(AXI_GPIO_tri_io[2]),
        .O(AXI_GPIO_tri_i_2),
        .T(AXI_GPIO_tri_t_2));
  IOBUF AXI_GPIO_tri_iobuf_20
       (.I(AXI_GPIO_tri_o_20),
        .IO(AXI_GPIO_tri_io[20]),
        .O(AXI_GPIO_tri_i_20),
        .T(AXI_GPIO_tri_t_20));
  IOBUF AXI_GPIO_tri_iobuf_21
       (.I(AXI_GPIO_tri_o_21),
        .IO(AXI_GPIO_tri_io[21]),
        .O(AXI_GPIO_tri_i_21),
        .T(AXI_GPIO_tri_t_21));
  IOBUF AXI_GPIO_tri_iobuf_22
       (.I(AXI_GPIO_tri_o_22),
        .IO(AXI_GPIO_tri_io[22]),
        .O(AXI_GPIO_tri_i_22),
        .T(AXI_GPIO_tri_t_22));
  IOBUF AXI_GPIO_tri_iobuf_23
       (.I(AXI_GPIO_tri_o_23),
        .IO(AXI_GPIO_tri_io[23]),
        .O(AXI_GPIO_tri_i_23),
        .T(AXI_GPIO_tri_t_23));
  IOBUF AXI_GPIO_tri_iobuf_24
       (.I(AXI_GPIO_tri_o_24),
        .IO(AXI_GPIO_tri_io[24]),
        .O(AXI_GPIO_tri_i_24),
        .T(AXI_GPIO_tri_t_24));
  IOBUF AXI_GPIO_tri_iobuf_3
       (.I(AXI_GPIO_tri_o_3),
        .IO(AXI_GPIO_tri_io[3]),
        .O(AXI_GPIO_tri_i_3),
        .T(AXI_GPIO_tri_t_3));
  IOBUF AXI_GPIO_tri_iobuf_4
       (.I(AXI_GPIO_tri_o_4),
        .IO(AXI_GPIO_tri_io[4]),
        .O(AXI_GPIO_tri_i_4),
        .T(AXI_GPIO_tri_t_4));
  IOBUF AXI_GPIO_tri_iobuf_5
       (.I(AXI_GPIO_tri_o_5),
        .IO(AXI_GPIO_tri_io[5]),
        .O(AXI_GPIO_tri_i_5),
        .T(AXI_GPIO_tri_t_5));
  IOBUF AXI_GPIO_tri_iobuf_6
       (.I(AXI_GPIO_tri_o_6),
        .IO(AXI_GPIO_tri_io[6]),
        .O(AXI_GPIO_tri_i_6),
        .T(AXI_GPIO_tri_t_6));
  IOBUF AXI_GPIO_tri_iobuf_7
       (.I(AXI_GPIO_tri_o_7),
        .IO(AXI_GPIO_tri_io[7]),
        .O(AXI_GPIO_tri_i_7),
        .T(AXI_GPIO_tri_t_7));
  IOBUF AXI_GPIO_tri_iobuf_8
       (.I(AXI_GPIO_tri_o_8),
        .IO(AXI_GPIO_tri_io[8]),
        .O(AXI_GPIO_tri_i_8),
        .T(AXI_GPIO_tri_t_8));
  IOBUF AXI_GPIO_tri_iobuf_9
       (.I(AXI_GPIO_tri_o_9),
        .IO(AXI_GPIO_tri_io[9]),
        .O(AXI_GPIO_tri_i_9),
        .T(AXI_GPIO_tri_t_9));
  IOBUF AXI_IIC_scl_iobuf
       (.I(AXI_IIC_scl_o),
        .IO(AXI_IIC_scl_io),
        .O(AXI_IIC_scl_i),
        .T(AXI_IIC_scl_t));
  IOBUF AXI_IIC_sda_iobuf
       (.I(AXI_IIC_sda_o),
        .IO(AXI_IIC_sda_io),
        .O(AXI_IIC_sda_i),
        .T(AXI_IIC_sda_t));
  IOBUF AXI_SPI_io0_iobuf
       (.I(AXI_SPI_io0_o),
        .IO(AXI_SPI_io0_io),
        .O(AXI_SPI_io0_i),
        .T(AXI_SPI_io0_t));
  IOBUF AXI_SPI_io1_iobuf
       (.I(AXI_SPI_io1_o),
        .IO(AXI_SPI_io1_io),
        .O(AXI_SPI_io1_i),
        .T(AXI_SPI_io1_t));
  IOBUF AXI_SPI_sck_iobuf
       (.I(AXI_SPI_sck_o),
        .IO(AXI_SPI_sck_io),
        .O(AXI_SPI_sck_i),
        .T(AXI_SPI_sck_t));
  IOBUF AXI_SPI_ss_iobuf_0
       (.I(AXI_SPI_ss_o_0),
        .IO(AXI_SPI_ss_io[0]),
        .O(AXI_SPI_ss_i_0),
        .T(AXI_SPI_ss_t));
  IOBUF EMIO_GPIO_tri_iobuf_0
       (.I(EMIO_GPIO_tri_o_0),
        .IO(EMIO_GPIO_tri_io[0]),
        .O(EMIO_GPIO_tri_i_0),
        .T(EMIO_GPIO_tri_t_0));
  IOBUF EMIO_GPIO_tri_iobuf_1
       (.I(EMIO_GPIO_tri_o_1),
        .IO(EMIO_GPIO_tri_io[1]),
        .O(EMIO_GPIO_tri_i_1),
        .T(EMIO_GPIO_tri_t_1));
  IOBUF EMIO_GPIO_tri_iobuf_10
       (.I(EMIO_GPIO_tri_o_10),
        .IO(EMIO_GPIO_tri_io[10]),
        .O(EMIO_GPIO_tri_i_10),
        .T(EMIO_GPIO_tri_t_10));
  IOBUF EMIO_GPIO_tri_iobuf_11
       (.I(EMIO_GPIO_tri_o_11),
        .IO(EMIO_GPIO_tri_io[11]),
        .O(EMIO_GPIO_tri_i_11),
        .T(EMIO_GPIO_tri_t_11));
  IOBUF EMIO_GPIO_tri_iobuf_12
       (.I(EMIO_GPIO_tri_o_12),
        .IO(EMIO_GPIO_tri_io[12]),
        .O(EMIO_GPIO_tri_i_12),
        .T(EMIO_GPIO_tri_t_12));
  IOBUF EMIO_GPIO_tri_iobuf_13
       (.I(EMIO_GPIO_tri_o_13),
        .IO(EMIO_GPIO_tri_io[13]),
        .O(EMIO_GPIO_tri_i_13),
        .T(EMIO_GPIO_tri_t_13));
  IOBUF EMIO_GPIO_tri_iobuf_14
       (.I(EMIO_GPIO_tri_o_14),
        .IO(EMIO_GPIO_tri_io[14]),
        .O(EMIO_GPIO_tri_i_14),
        .T(EMIO_GPIO_tri_t_14));
  IOBUF EMIO_GPIO_tri_iobuf_15
       (.I(EMIO_GPIO_tri_o_15),
        .IO(EMIO_GPIO_tri_io[15]),
        .O(EMIO_GPIO_tri_i_15),
        .T(EMIO_GPIO_tri_t_15));
  IOBUF EMIO_GPIO_tri_iobuf_16
       (.I(EMIO_GPIO_tri_o_16),
        .IO(EMIO_GPIO_tri_io[16]),
        .O(EMIO_GPIO_tri_i_16),
        .T(EMIO_GPIO_tri_t_16));
  IOBUF EMIO_GPIO_tri_iobuf_17
       (.I(EMIO_GPIO_tri_o_17),
        .IO(EMIO_GPIO_tri_io[17]),
        .O(EMIO_GPIO_tri_i_17),
        .T(EMIO_GPIO_tri_t_17));
  IOBUF EMIO_GPIO_tri_iobuf_18
       (.I(EMIO_GPIO_tri_o_18),
        .IO(EMIO_GPIO_tri_io[18]),
        .O(EMIO_GPIO_tri_i_18),
        .T(EMIO_GPIO_tri_t_18));
  IOBUF EMIO_GPIO_tri_iobuf_19
       (.I(EMIO_GPIO_tri_o_19),
        .IO(EMIO_GPIO_tri_io[19]),
        .O(EMIO_GPIO_tri_i_19),
        .T(EMIO_GPIO_tri_t_19));
  IOBUF EMIO_GPIO_tri_iobuf_2
       (.I(EMIO_GPIO_tri_o_2),
        .IO(EMIO_GPIO_tri_io[2]),
        .O(EMIO_GPIO_tri_i_2),
        .T(EMIO_GPIO_tri_t_2));
  IOBUF EMIO_GPIO_tri_iobuf_20
       (.I(EMIO_GPIO_tri_o_20),
        .IO(EMIO_GPIO_tri_io[20]),
        .O(EMIO_GPIO_tri_i_20),
        .T(EMIO_GPIO_tri_t_20));
  IOBUF EMIO_GPIO_tri_iobuf_21
       (.I(EMIO_GPIO_tri_o_21),
        .IO(EMIO_GPIO_tri_io[21]),
        .O(EMIO_GPIO_tri_i_21),
        .T(EMIO_GPIO_tri_t_21));
  IOBUF EMIO_GPIO_tri_iobuf_22
       (.I(EMIO_GPIO_tri_o_22),
        .IO(EMIO_GPIO_tri_io[22]),
        .O(EMIO_GPIO_tri_i_22),
        .T(EMIO_GPIO_tri_t_22));
  IOBUF EMIO_GPIO_tri_iobuf_23
       (.I(EMIO_GPIO_tri_o_23),
        .IO(EMIO_GPIO_tri_io[23]),
        .O(EMIO_GPIO_tri_i_23),
        .T(EMIO_GPIO_tri_t_23));
  IOBUF EMIO_GPIO_tri_iobuf_24
       (.I(EMIO_GPIO_tri_o_24),
        .IO(EMIO_GPIO_tri_io[24]),
        .O(EMIO_GPIO_tri_i_24),
        .T(EMIO_GPIO_tri_t_24));
  IOBUF EMIO_GPIO_tri_iobuf_3
       (.I(EMIO_GPIO_tri_o_3),
        .IO(EMIO_GPIO_tri_io[3]),
        .O(EMIO_GPIO_tri_i_3),
        .T(EMIO_GPIO_tri_t_3));
  IOBUF EMIO_GPIO_tri_iobuf_4
       (.I(EMIO_GPIO_tri_o_4),
        .IO(EMIO_GPIO_tri_io[4]),
        .O(EMIO_GPIO_tri_i_4),
        .T(EMIO_GPIO_tri_t_4));
  IOBUF EMIO_GPIO_tri_iobuf_5
       (.I(EMIO_GPIO_tri_o_5),
        .IO(EMIO_GPIO_tri_io[5]),
        .O(EMIO_GPIO_tri_i_5),
        .T(EMIO_GPIO_tri_t_5));
  IOBUF EMIO_GPIO_tri_iobuf_6
       (.I(EMIO_GPIO_tri_o_6),
        .IO(EMIO_GPIO_tri_io[6]),
        .O(EMIO_GPIO_tri_i_6),
        .T(EMIO_GPIO_tri_t_6));
  IOBUF EMIO_GPIO_tri_iobuf_7
       (.I(EMIO_GPIO_tri_o_7),
        .IO(EMIO_GPIO_tri_io[7]),
        .O(EMIO_GPIO_tri_i_7),
        .T(EMIO_GPIO_tri_t_7));
  IOBUF EMIO_GPIO_tri_iobuf_8
       (.I(EMIO_GPIO_tri_o_8),
        .IO(EMIO_GPIO_tri_io[8]),
        .O(EMIO_GPIO_tri_i_8),
        .T(EMIO_GPIO_tri_t_8));
  IOBUF EMIO_GPIO_tri_iobuf_9
       (.I(EMIO_GPIO_tri_o_9),
        .IO(EMIO_GPIO_tri_io[9]),
        .O(EMIO_GPIO_tri_i_9),
        .T(EMIO_GPIO_tri_t_9));
  IOBUF EMIO_IIC_scl_iobuf
       (.I(EMIO_IIC_scl_o),
        .IO(EMIO_IIC_scl_io),
        .O(EMIO_IIC_scl_i),
        .T(EMIO_IIC_scl_t));
  IOBUF EMIO_IIC_sda_iobuf
       (.I(EMIO_IIC_sda_o),
        .IO(EMIO_IIC_sda_io),
        .O(EMIO_IIC_sda_i),
        .T(EMIO_IIC_sda_t));
  base base_i
       (.AXI_GPIO_tri_i({AXI_GPIO_tri_i_24,AXI_GPIO_tri_i_23,AXI_GPIO_tri_i_22,AXI_GPIO_tri_i_21,AXI_GPIO_tri_i_20,AXI_GPIO_tri_i_19,AXI_GPIO_tri_i_18,AXI_GPIO_tri_i_17,AXI_GPIO_tri_i_16,AXI_GPIO_tri_i_15,AXI_GPIO_tri_i_14,AXI_GPIO_tri_i_13,AXI_GPIO_tri_i_12,AXI_GPIO_tri_i_11,AXI_GPIO_tri_i_10,AXI_GPIO_tri_i_9,AXI_GPIO_tri_i_8,AXI_GPIO_tri_i_7,AXI_GPIO_tri_i_6,AXI_GPIO_tri_i_5,AXI_GPIO_tri_i_4,AXI_GPIO_tri_i_3,AXI_GPIO_tri_i_2,AXI_GPIO_tri_i_1,AXI_GPIO_tri_i_0}),
        .AXI_GPIO_tri_o({AXI_GPIO_tri_o_24,AXI_GPIO_tri_o_23,AXI_GPIO_tri_o_22,AXI_GPIO_tri_o_21,AXI_GPIO_tri_o_20,AXI_GPIO_tri_o_19,AXI_GPIO_tri_o_18,AXI_GPIO_tri_o_17,AXI_GPIO_tri_o_16,AXI_GPIO_tri_o_15,AXI_GPIO_tri_o_14,AXI_GPIO_tri_o_13,AXI_GPIO_tri_o_12,AXI_GPIO_tri_o_11,AXI_GPIO_tri_o_10,AXI_GPIO_tri_o_9,AXI_GPIO_tri_o_8,AXI_GPIO_tri_o_7,AXI_GPIO_tri_o_6,AXI_GPIO_tri_o_5,AXI_GPIO_tri_o_4,AXI_GPIO_tri_o_3,AXI_GPIO_tri_o_2,AXI_GPIO_tri_o_1,AXI_GPIO_tri_o_0}),
        .AXI_GPIO_tri_t({AXI_GPIO_tri_t_24,AXI_GPIO_tri_t_23,AXI_GPIO_tri_t_22,AXI_GPIO_tri_t_21,AXI_GPIO_tri_t_20,AXI_GPIO_tri_t_19,AXI_GPIO_tri_t_18,AXI_GPIO_tri_t_17,AXI_GPIO_tri_t_16,AXI_GPIO_tri_t_15,AXI_GPIO_tri_t_14,AXI_GPIO_tri_t_13,AXI_GPIO_tri_t_12,AXI_GPIO_tri_t_11,AXI_GPIO_tri_t_10,AXI_GPIO_tri_t_9,AXI_GPIO_tri_t_8,AXI_GPIO_tri_t_7,AXI_GPIO_tri_t_6,AXI_GPIO_tri_t_5,AXI_GPIO_tri_t_4,AXI_GPIO_tri_t_3,AXI_GPIO_tri_t_2,AXI_GPIO_tri_t_1,AXI_GPIO_tri_t_0}),
        .AXI_IIC_scl_i(AXI_IIC_scl_i),
        .AXI_IIC_scl_o(AXI_IIC_scl_o),
        .AXI_IIC_scl_t(AXI_IIC_scl_t),
        .AXI_IIC_sda_i(AXI_IIC_sda_i),
        .AXI_IIC_sda_o(AXI_IIC_sda_o),
        .AXI_IIC_sda_t(AXI_IIC_sda_t),
        .AXI_SPI_io0_i(AXI_SPI_io0_i),
        .AXI_SPI_io0_o(AXI_SPI_io0_o),
        .AXI_SPI_io0_t(AXI_SPI_io0_t),
        .AXI_SPI_io1_i(AXI_SPI_io1_i),
        .AXI_SPI_io1_o(AXI_SPI_io1_o),
        .AXI_SPI_io1_t(AXI_SPI_io1_t),
        .AXI_SPI_sck_i(AXI_SPI_sck_i),
        .AXI_SPI_sck_o(AXI_SPI_sck_o),
        .AXI_SPI_sck_t(AXI_SPI_sck_t),
        .AXI_SPI_ss_i(AXI_SPI_ss_i_0),
        .AXI_SPI_ss_o(AXI_SPI_ss_o_0),
        .AXI_SPI_ss_t(AXI_SPI_ss_t),
        .AXI_UART_rxd(AXI_UART_rxd),
        .AXI_UART_txd(AXI_UART_txd),
        .DDR_addr(DDR_addr),
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
        .EMIO_GPIO_tri_i({EMIO_GPIO_tri_i_24,EMIO_GPIO_tri_i_23,EMIO_GPIO_tri_i_22,EMIO_GPIO_tri_i_21,EMIO_GPIO_tri_i_20,EMIO_GPIO_tri_i_19,EMIO_GPIO_tri_i_18,EMIO_GPIO_tri_i_17,EMIO_GPIO_tri_i_16,EMIO_GPIO_tri_i_15,EMIO_GPIO_tri_i_14,EMIO_GPIO_tri_i_13,EMIO_GPIO_tri_i_12,EMIO_GPIO_tri_i_11,EMIO_GPIO_tri_i_10,EMIO_GPIO_tri_i_9,EMIO_GPIO_tri_i_8,EMIO_GPIO_tri_i_7,EMIO_GPIO_tri_i_6,EMIO_GPIO_tri_i_5,EMIO_GPIO_tri_i_4,EMIO_GPIO_tri_i_3,EMIO_GPIO_tri_i_2,EMIO_GPIO_tri_i_1,EMIO_GPIO_tri_i_0}),
        .EMIO_GPIO_tri_o({EMIO_GPIO_tri_o_24,EMIO_GPIO_tri_o_23,EMIO_GPIO_tri_o_22,EMIO_GPIO_tri_o_21,EMIO_GPIO_tri_o_20,EMIO_GPIO_tri_o_19,EMIO_GPIO_tri_o_18,EMIO_GPIO_tri_o_17,EMIO_GPIO_tri_o_16,EMIO_GPIO_tri_o_15,EMIO_GPIO_tri_o_14,EMIO_GPIO_tri_o_13,EMIO_GPIO_tri_o_12,EMIO_GPIO_tri_o_11,EMIO_GPIO_tri_o_10,EMIO_GPIO_tri_o_9,EMIO_GPIO_tri_o_8,EMIO_GPIO_tri_o_7,EMIO_GPIO_tri_o_6,EMIO_GPIO_tri_o_5,EMIO_GPIO_tri_o_4,EMIO_GPIO_tri_o_3,EMIO_GPIO_tri_o_2,EMIO_GPIO_tri_o_1,EMIO_GPIO_tri_o_0}),
        .EMIO_GPIO_tri_t({EMIO_GPIO_tri_t_24,EMIO_GPIO_tri_t_23,EMIO_GPIO_tri_t_22,EMIO_GPIO_tri_t_21,EMIO_GPIO_tri_t_20,EMIO_GPIO_tri_t_19,EMIO_GPIO_tri_t_18,EMIO_GPIO_tri_t_17,EMIO_GPIO_tri_t_16,EMIO_GPIO_tri_t_15,EMIO_GPIO_tri_t_14,EMIO_GPIO_tri_t_13,EMIO_GPIO_tri_t_12,EMIO_GPIO_tri_t_11,EMIO_GPIO_tri_t_10,EMIO_GPIO_tri_t_9,EMIO_GPIO_tri_t_8,EMIO_GPIO_tri_t_7,EMIO_GPIO_tri_t_6,EMIO_GPIO_tri_t_5,EMIO_GPIO_tri_t_4,EMIO_GPIO_tri_t_3,EMIO_GPIO_tri_t_2,EMIO_GPIO_tri_t_1,EMIO_GPIO_tri_t_0}),
        .EMIO_IIC_scl_i(EMIO_IIC_scl_i),
        .EMIO_IIC_scl_o(EMIO_IIC_scl_o),
        .EMIO_IIC_scl_t(EMIO_IIC_scl_t),
        .EMIO_IIC_sda_i(EMIO_IIC_sda_i),
        .EMIO_IIC_sda_o(EMIO_IIC_sda_o),
        .EMIO_IIC_sda_t(EMIO_IIC_sda_t),
        .EMIO_SPI_io0_o(EMIO_SPI_io0_o),
        .EMIO_SPI_io1_i(EMIO_SPI_io1_i),
        .EMIO_SPI_sck_o(EMIO_SPI_sck_o),
        .EMIO_SPI_ss_o(EMIO_SPI_ss_o),
        .EMIO_UART_rxd(EMIO_UART_rxd),
        .EMIO_UART_txd(EMIO_UART_txd),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb));
endmodule
