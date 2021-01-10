LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_STD.ALL; 

 
ENTITY multiplier_tb IS
  GENERIC(
        n : integer := 8
    );
END multiplier_tb;
 
ARCHITECTURE test OF multiplier_tb IS 
    SIGNAL A    : std_logic_vector(0 TO N-1);
	SIGNAL B    : std_logic_vector(0 TO N-1);
	SIGNAL Z2   : std_logic_vector(0 TO 2*N-1);
BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
   uut: entity work.multiplier(behavioral) PORT MAP (
          -- INPUT PORTS
          a     => A,
          b     => B,
          
          -- output port
          c     => Z2
        );
  tb1 : process
        constant period: time := 5 ns;
        BEGIN
            
            A     <= std_logic_vector(to_unsigned(1, n));
            B     <= std_logic_vector(to_unsigned(8, n));
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(Z2)) = 8
            ) REPORT "test 0000 failed" SEVERITY ERROR;
            
            
            
            A     <= std_logic_vector(to_unsigned(0, n));
            B     <= std_logic_vector(to_unsigned(6, n));
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(Z2)) = 0
            ) REPORT "test 0001 failed" SEVERITY ERROR;
            
            
            
            A     <= std_logic_vector(to_unsigned(3, n));
            B     <= std_logic_vector(to_unsigned(0, n));
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(Z2)) = 0
            ) REPORT "test 0002 failed" SEVERITY ERROR;
            
            
            
            A     <= std_logic_vector(to_unsigned(3, n));
            B     <= std_logic_vector(to_unsigned(9, n));
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(Z2)) = 27
            ) REPORT "test 0003 failed" SEVERITY ERROR;
            
            
            
            A     <= std_logic_vector(to_unsigned(10, n));
            B     <= std_logic_vector(to_unsigned(4 , n));
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(Z2)) = 40
            ) REPORT "test 0004 failed" SEVERITY ERROR;
            
                          
            A     <= std_logic_vector(to_unsigned(255, n));
            B     <= std_logic_vector(to_unsigned(255, n));
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(Z2)) = 255*255
            ) REPORT "test 0005 failed" SEVERITY ERROR;
            
            
                     
            A     <= std_logic_vector(to_unsigned(10 , n));
            B     <= std_logic_vector(to_unsigned(255, n));
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(Z2)) = 2550
            ) REPORT "test 0006 failed" SEVERITY ERROR;
            
                 
                 
            WAIT;
        end process;

END;
