//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
//Date        : Sat May 14 15:22:01 2016
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
    pwm0,
    pwm1,
    pwm10,
    pwm11,
    pwm12,
    pwm13,
    pwm14,
    pwm15,
    pwm16,
    pwm17,
    pwm18,
    pwm19,
    pwm2,
    pwm20,
    pwm21,
    pwm22,
    pwm23,
    pwm3,
    pwm4,
    pwm5,
    pwm6,
    pwm7,
    pwm8,
    pwm9);
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
  output pwm0;
  output pwm1;
  output pwm10;
  output pwm11;
  output pwm12;
  output pwm13;
  output pwm14;
  output pwm15;
  output pwm16;
  output pwm17;
  output pwm18;
  output pwm19;
  output pwm2;
  output pwm20;
  output pwm21;
  output pwm22;
  output pwm23;
  output pwm3;
  output pwm4;
  output pwm5;
  output pwm6;
  output pwm7;
  output pwm8;
  output pwm9;

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
  wire pwm0;
  wire pwm1;
  wire pwm10;
  wire pwm11;
  wire pwm12;
  wire pwm13;
  wire pwm14;
  wire pwm15;
  wire pwm16;
  wire pwm17;
  wire pwm18;
  wire pwm19;
  wire pwm2;
  wire pwm20;
  wire pwm21;
  wire pwm22;
  wire pwm23;
  wire pwm3;
  wire pwm4;
  wire pwm5;
  wire pwm6;
  wire pwm7;
  wire pwm8;
  wire pwm9;

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
        .pwm0(pwm0),
        .pwm1(pwm1),
        .pwm10(pwm10),
        .pwm11(pwm11),
        .pwm12(pwm12),
        .pwm13(pwm13),
        .pwm14(pwm14),
        .pwm15(pwm15),
        .pwm16(pwm16),
        .pwm17(pwm17),
        .pwm18(pwm18),
        .pwm19(pwm19),
        .pwm2(pwm2),
        .pwm20(pwm20),
        .pwm21(pwm21),
        .pwm22(pwm22),
        .pwm23(pwm23),
        .pwm3(pwm3),
        .pwm4(pwm4),
        .pwm5(pwm5),
        .pwm6(pwm6),
        .pwm7(pwm7),
        .pwm8(pwm8),
        .pwm9(pwm9));
endmodule
