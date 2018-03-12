
-- VHDL Test Bench Created from source file lab8_skel.vhd -- Thu Mar 09 20:46:26 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT lab8_skel
	PORT(
		NO : IN std_logic;
		NC : IN std_logic;
		D : IN std_logic;
		CLKIN : IN std_logic;          
		QS_N : OUT std_logic;
		QS : OUT std_logic;
		QM_N : OUT std_logic;
		QM : OUT std_logic;
		QFF : OUT std_logic;
		BQ : OUT std_logic
		);
	END COMPONENT;

	SIGNAL QS_N :  std_logic;
	SIGNAL QS :  std_logic;
	SIGNAL QM_N :  std_logic;
	SIGNAL QM :  std_logic;
	SIGNAL QFF :  std_logic;
	SIGNAL NO :  std_logic;
	SIGNAL NC :  std_logic;
	SIGNAL D :  std_logic;
	SIGNAL CLKIN :  std_logic;
	SIGNAL BQ :  std_logic;

BEGIN

	uut: lab8_skel PORT MAP(
		QS_N => QS_N,
		QS => QS,
		QM_N => QM_N,
		QM => QM,
		QFF => QFF,
		NO => NO,
		NC => NC,
		D => D,
		CLKIN => CLKIN,
		BQ => BQ
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
