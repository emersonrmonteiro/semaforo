-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/07/2020 20:07:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	semaforo_contador IS
    PORT (
	SA1 : OUT std_logic;
	clock19 : IN std_logic;
	SA2 : OUT std_logic;
	SA3 : OUT std_logic;
	SB1 : OUT std_logic;
	SB2 : OUT std_logic;
	SB3 : OUT std_logic
	);
END semaforo_contador;

-- Design Ports Information
-- SA1	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SA2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SA3	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SB1	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SB2	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SB3	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock19	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semaforo_contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SA1 : std_logic;
SIGNAL ww_clock19 : std_logic;
SIGNAL ww_SA2 : std_logic;
SIGNAL ww_SA3 : std_logic;
SIGNAL ww_SB1 : std_logic;
SIGNAL ww_SB2 : std_logic;
SIGNAL ww_SB3 : std_logic;
SIGNAL \SA1~output_o\ : std_logic;
SIGNAL \SA2~output_o\ : std_logic;
SIGNAL \SA3~output_o\ : std_logic;
SIGNAL \SB1~output_o\ : std_logic;
SIGNAL \SB2~output_o\ : std_logic;
SIGNAL \SB3~output_o\ : std_logic;
SIGNAL \clock19~input_o\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst15~feeder_combout\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \ALT_INV_inst2~combout\ : std_logic;
SIGNAL \ALT_INV_inst16~q\ : std_logic;
SIGNAL \ALT_INV_inst15~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

SA1 <= ww_SA1;
ww_clock19 <= clock19;
SA2 <= ww_SA2;
SA3 <= ww_SA3;
SB1 <= ww_SB1;
SB2 <= ww_SB2;
SB3 <= ww_SB3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst2~combout\ <= NOT \inst2~combout\;
\ALT_INV_inst16~q\ <= NOT \inst16~q\;
\ALT_INV_inst15~q\ <= NOT \inst15~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X25_Y73_N23
\SA1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst16~q\,
	devoe => ww_devoe,
	o => \SA1~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\SA2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~0_combout\,
	devoe => ww_devoe,
	o => \SA2~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\SA3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~1_combout\,
	devoe => ww_devoe,
	o => \SA3~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\SB1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \SB1~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\SB2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~2_combout\,
	devoe => ww_devoe,
	o => \SB2~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\SB3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst2~combout\,
	devoe => ww_devoe,
	o => \SB3~output_o\);

-- Location: IOIBUF_X23_Y73_N15
\clock19~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock19,
	o => \clock19~input_o\);

-- Location: LCCOMB_X24_Y72_N8
\inst15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = !\inst15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15~q\,
	combout => \inst15~0_combout\);

-- Location: LCCOMB_X24_Y72_N20
\inst15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~feeder_combout\ = \inst15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15~0_combout\,
	combout => \inst15~feeder_combout\);

-- Location: FF_X24_Y72_N21
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock19~input_o\,
	d => \inst15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: LCCOMB_X24_Y72_N0
\inst16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = !\inst16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~q\,
	combout => \inst16~0_combout\);

-- Location: FF_X24_Y72_N1
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst15~q\,
	d => \inst16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X24_Y72_N18
\inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\inst15~q\ & \inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15~q\,
	datad => \inst16~q\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X24_Y72_N4
\inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (!\inst15~q\ & \inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15~q\,
	datad => \inst16~q\,
	combout => \inst3~1_combout\);

-- Location: LCCOMB_X24_Y72_N10
\inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\inst15~q\ & !\inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15~q\,
	datad => \inst16~q\,
	combout => \inst3~2_combout\);

-- Location: LCCOMB_X24_Y72_N12
inst2 : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\inst15~q\) # (\inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15~q\,
	datad => \inst16~q\,
	combout => \inst2~combout\);

ww_SA1 <= \SA1~output_o\;

ww_SA2 <= \SA2~output_o\;

ww_SA3 <= \SA3~output_o\;

ww_SB1 <= \SB1~output_o\;

ww_SB2 <= \SB2~output_o\;

ww_SB3 <= \SB3~output_o\;
END structure;


