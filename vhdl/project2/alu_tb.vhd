LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_STD.ALL; 

-- baraye sakht e TB az in link estefade shod:
-- https://vhdlguide.readthedocs.io/en/latest/vhdl/testbench.html#vhdl-half-adder-process-tb

-- baraye tabdil in link ha:
-- https://www.csee.umbc.edu/portal/help/VHDL/packages/numeric_std.vhd
-- https://www.nANDlAND.com/vhdl/tips/tip-convert-numeric-std-logic-vector-to-integer.html

 
ENTITY alu_tb IS
  GENERIC(
        n : integer := 32
    );
END alu_tb;
 
ARCHITECTURE test OF alu_tb IS 
  
  
    -- inputs of CUT
    SIGNAL cin  : std_logic;
	SIGNAL sin  : std_logic;
	SIGNAL func : std_logic_vector(3 DOWNTO 0);
	
	SIGNAL A    : std_logic_vector(n-1 DOWNTO 0);
	SIGNAL B    : std_logic_vector(n-1 DOWNTO 0);
	
	-- outputs of CUT
	SIGNAL sout : std_logic;
	SIGNAL cout : std_logic;
	SIGNAL Ov   : std_logic;
    
	SIGNAL Z    : std_logic_vector(n-1 DOWNTO 0);
 
BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
   uut: entity work.ALU_32bit(behavioral) PORT MAP (
          -- INPUT PORTS
          cin   => cin,
          sin   => sin,
          func  => func,
          A     => A,
          B     => B,
          
          -- output ports
          sout  => sout,
          cout  => cout,
          Ov    => Ov,
          Z     => Z
        );

 

  tb1 : process
        constant period: time := 5 ns;
        BEGIN
            
            -- 0000 -B
            cin   <= '0'; sin   <= '0';
            func  <= b"0000";
            A     <= x"0000000"& b"0101";                 -- don't care
            B     <= std_logic_vector(to_signed(10, 32)); -- 10 in 32 bit
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = -10) 
            ) REPORT "test 0000 part1 failed" SEVERITY ERROR;
            
            
            cin   <= '0'; sin   <= '0';
            func  <= b"0000";
            A     <= x"ZZZZZZZZ";                         -- don't care
            B     <= std_logic_vector(to_signed(-8, 32)); -- -8 (32 bit)
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 8) 
            ) REPORT "test 0000 part2 failed" SEVERITY ERROR;
            
            
            
            -- 0001 A+B
            cin   <= '0'; sin   <= '0';
            func  <= b"0001";
            A     <= std_logic_vector(to_signed(+82, 32));
            B     <= std_logic_vector(to_signed(-42, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 40) 
            ) REPORT "test 0001 part1 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"0001";
            A     <= std_logic_vector(to_signed(-7, 32));
            B     <= std_logic_vector(to_signed(-8, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '1') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = -15) 
            ) REPORT "test 0001 part2 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"0001";
            A     <= std_logic_vector(to_signed(+777, 32));
            B     <= std_logic_vector(to_signed(+888, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = +1665) 
            ) REPORT "test 0001 part3 failed" SEVERITY ERROR;
            
            
            -- 0010 A+B+cin
            cin   <= '0'; sin   <= '0';
            func  <= b"0010";
            A     <= std_logic_vector(to_signed(+82, 32));
            B     <= std_logic_vector(to_signed(-42, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 40) 
            ) REPORT "test 0010 part1 failed" SEVERITY ERROR;
            
            cin   <= '1'; sin   <= '0';
            func  <= b"0010";
            A     <= std_logic_vector(to_signed(-7, 32));
            B     <= std_logic_vector(to_signed(-8, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '1') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = -14) 
            ) REPORT "test 0010 part2 failed" SEVERITY ERROR;
            
            
            
         
            -- 0011 A-B
            cin   <= '0'; sin   <= '0';
            func  <= b"0011";
            A     <= std_logic_vector(to_signed(+82, 32));
            B     <= std_logic_vector(to_signed(+42, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 40) 
            ) REPORT "test 0011 part1 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"0011";
            A     <= std_logic_vector(to_signed(-7, 32));
            B     <= std_logic_vector(to_signed(+8, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '1') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = -15) 
            ) REPORT "test 0011 part2 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"0011";
            A     <= std_logic_vector(to_signed(+777, 32));
            B     <= std_logic_vector(to_signed(-888, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = +1665) 
            ) REPORT "test 0011 part3 failed" SEVERITY ERROR;
       
         
         
            -- 0100 -B (unsigned to 2's compliment)
            cin   <= '0'; sin   <= '0';
            func  <= b"0000";
            A     <= x"ZZZZZZZZ";                           -- don't care
            B     <= std_logic_vector(to_unsigned(10, 32)); -- 10 in 32 bit
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = -10) 
            ) REPORT "test 0100 part1 failed" SEVERITY ERROR;
            
            
            cin   <= '0'; sin   <= '0';
            func  <= b"0000";
            A     <= x"ZZZZZZZZ";                         -- don't care
            B     <= std_logic_vector(to_unsigned(8, 32)); -- -8 (32 bit)
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = -8) 
            ) REPORT "test 0100 part2 failed" SEVERITY ERROR;
            
         
         
            -- 0101 not B
            cin   <= '0'; sin   <= '0';
            func  <= b"0101";
            A     <= x"ZZZZZZZZ";      -- don't care
            B     <= b"11" & x"000000" & b"001000";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov   = '0') AND 
                (Z    = b"00" & x"FFFFFF" & b"110111")
            ) REPORT "test 0101 failed" SEVERITY ERROR;
         
            
            -- 0110 AND
            cin   <= '0'; sin   <= '0';
            func  <= b"0110";
            A     <= b"11" & x"00B000" & b"000101";
            B     <= b"10" & x"00F000" & b"001100";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov   = '0') AND 
                (Z    = b"10" & x"00B000" & b"000100")
            ) REPORT "test 0110 failed" SEVERITY ERROR;
            
            -- 0111 OR
            cin   <= '0'; sin   <= '0';
            func  <= b"0111";
            A     <= b"00" & x"000000" & b"000101";
            B     <= b"00" & x"000000" & b"001000";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov   = '0') AND 
                (Z    = b"00" & x"000000" & b"001101")
            ) REPORT "test 0111 failed" SEVERITY ERROR;

            -- 1000 XOR
            cin   <= '0'; sin   <= '0';
            func  <= b"1000";
            A     <= b"10" & x"000000" & b"000101";
            B     <= b"10" & x"000000" & b"001000";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov   = '0') AND 
                (Z    = b"00" & x"000000" & b"001101")
            ) REPORT "test 1000 failed" SEVERITY ERROR;
            
      
            -- 1001 (1 bit logical left shift of A)
            cin   <= '0'; sin   <= '0';
            func  <= b"1001";
            A     <= b"10" & x"000000" & b"000101";
            B     <= b"ZZ" & x"ZZZZZZ" & b"ZZZZZZ";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov   = '0') AND 
                (Z    = b"0" & x"000000" & b"0001010")
            ) REPORT "test 1001 failed" SEVERITY ERROR;
            
            
             -- 1010 (1 bit logical right shift of A)
            cin   <= '0'; sin   <= '0';
            func  <= b"1010";
            A     <= b"10" & x"000000" & b"000101";
            B     <= b"ZZ" & x"ZZZZZZ" & b"ZZZZZZ";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov   = '0') AND 
                (Z    = b"010" & x"000000" & b"00010" )
            ) REPORT "test 1010 failed" SEVERITY ERROR;
            
            
            
             -- 1011 (1 bit circular left shift of A)
            cin   <= '0'; sin   <= '0';
            func  <= b"1011";
            A     <= b"10" & x"000000" & b"000101";
            B     <= b"ZZ" & x"ZZZZZZ" & b"ZZZZZZ";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '1') AND (Ov   = '0') AND 
                (Z    = b"0" & x"000000" & b"0001010")
            ) REPORT "test 1011 part1 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '1';
            func  <= b"1011";
            A     <= b"10" & x"000000" & b"000101";
            B     <= b"ZZ" & x"ZZZZZZ" & b"ZZZZZZ";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '1') AND (Ov   = '0') AND 
                (Z    = b"0" & x"000000" & b"0001011")
            ) REPORT "test 1011 part2 failed" SEVERITY ERROR;
            
            
             -- 1100 (1 bit circular right shift of A)
            cin   <= '0'; sin   <= '0';
            func  <= b"1100";
            A     <= b"10" & x"000000" & b"000101";
            B     <= b"ZZ" & x"ZZZZZZ" & b"ZZZZZZ";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '1') AND (Ov   = '0') AND 
                (Z    = b"010" & x"000000" & b"00010" )
            ) REPORT "test 1100 part1 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '1';
            func  <= b"1100";
            A     <= b"10" & x"000000" & b"000101";
            B     <= b"ZZ" & x"ZZZZZZ" & b"ZZZZZZ";
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '1') AND (Ov   = '0') AND 
                (Z    = b"110" & x"000000" & b"00010" )
            ) REPORT "test 1100 - part2 failed" SEVERITY ERROR;
            
          
            
            -- 1101 A>B (unsigned)
            cin   <= '0'; sin   <= '0';
            func  <= b"1101";
            A     <= std_logic_vector(to_signed(+82, 32));
            B     <= std_logic_vector(to_signed(+42, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 1) 
            ) REPORT "test 1101 part1 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"1101";
            A     <= std_logic_vector(to_signed(+7, 32));
            B     <= std_logic_vector(to_signed(+8, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 0) 
            ) REPORT "test 1101 part2 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"1101";
            A     <= std_logic_vector(to_signed(+777, 32));
            B     <= std_logic_vector(to_signed(+777, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 0) 
            ) REPORT "test 1101 part3 failed" SEVERITY ERROR;
       
            
            -- 1110 A<B (unsigned)
            cin   <= '0'; sin   <= '0';
            func  <= b"1110";
            A     <= std_logic_vector(to_signed(+82, 32));
            B     <= std_logic_vector(to_signed(+42, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 0) 
            ) REPORT "test 1110 part1 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"1110";
            A     <= std_logic_vector(to_signed(+7, 32));
            B     <= std_logic_vector(to_signed(+8, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 1) 
            ) REPORT "test 1110 part2 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"1110";
            A     <= std_logic_vector(to_signed(+777, 32));
            B     <= std_logic_vector(to_signed(+777, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 0) 
            ) REPORT "test 1110 part3 failed" SEVERITY ERROR;
            
            
            -- 1111 A=B (unsigned)
            cin   <= '0'; sin   <= '0';
            func  <= b"1111";
            A     <= std_logic_vector(to_signed(+82, 32));
            B     <= std_logic_vector(to_signed(+42, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 0) 
            ) REPORT "test 1111 part1 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"1111";
            A     <= std_logic_vector(to_signed(+7, 32));
            B     <= std_logic_vector(to_signed(+8, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 0) 
            ) REPORT "test 1111 part2 failed" SEVERITY ERROR;
            
            cin   <= '0'; sin   <= '0';
            func  <= b"1111";
            A     <= std_logic_vector(to_signed(+777, 32));
            B     <= std_logic_vector(to_signed(+777, 32));
            WAIT FOR period;
            ASSERT (
                (cout = '0') AND (sout = '0') AND (Ov = '0') AND 
                (to_integer(signed(Z)) = 1) 
            ) REPORT "test 1111 part3 failed" SEVERITY ERROR;
            

            WAIT;
        end process;

END;
