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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/27/2020 22:04:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          semaforo_contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY semaforo_contador_vhd_vec_tst IS
END semaforo_contador_vhd_vec_tst;
ARCHITECTURE semaforo_contador_arch OF semaforo_contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock19 : STD_LOGIC;
SIGNAL SA1 : STD_LOGIC;
SIGNAL SA2 : STD_LOGIC;
SIGNAL SA3 : STD_LOGIC;
SIGNAL SB1 : STD_LOGIC;
SIGNAL SB2 : STD_LOGIC;
SIGNAL SB3 : STD_LOGIC;
COMPONENT semaforo_contador
	PORT (
	clock19 : IN STD_LOGIC;
	SA1 : OUT STD_LOGIC;
	SA2 : OUT STD_LOGIC;
	SA3 : OUT STD_LOGIC;
	SB1 : OUT STD_LOGIC;
	SB2 : OUT STD_LOGIC;
	SB3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : semaforo_contador
	PORT MAP (
-- list connections between master ports and signals
	clock19 => clock19,
	SA1 => SA1,
	SA2 => SA2,
	SA3 => SA3,
	SB1 => SB1,
	SB2 => SB2,
	SB3 => SB3
	);

-- clock19
t_prcs_clock19: PROCESS
BEGIN
LOOP
	clock19 <= '0';
	WAIT FOR 5000 ps;
	clock19 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock19;
END semaforo_contador_arch;
