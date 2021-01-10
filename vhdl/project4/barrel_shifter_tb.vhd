LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_STD.ALL; 

 
ENTITY barrel_shifter_tb IS
  GENERIC(
        n     : integer := 32;
        nLog2 : integer := 5
    );
END barrel_shifter_tb;
 
ARCHITECTURE test OF barrel_shifter_tb IS 

        SIGNAL CLK  : std_logic;
        -- clock

        SIGNAL nRst : std_logic;
        -- not reset

        SIGNAL Sham : std_logic_vector(nLog2-1 DOWNTO 0);
        -- number of bits to be shifter
        -- 0 to 31

        SIGNAL Shty : std_logic_vector(1 DOWNTO 0);
        -- opcode    00    01    10   11
        --       logical shift
        --               arithmethic shift
        --                      circular shift
        --                          parallel load

        SIGNAL dir  : std_logic;
        -- left (0) or right (1) shift

        SIGNAL din  : std_logic_vector(n-1 DOWNTO 0);
        -- input for parallel load

        SIGNAL Sin  : std_logic;
        -- 

        SIGNAL dout : std_logic_vector(n-1 DOWNTO 0);
        SIGNAL Sout : std_logic;

BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
   uut: entity work.barrel_shifter(impl) PORT MAP (
          -- INPUT PORTS
          CLK,
          nRst,
          Sham,
          Shty,
          dir,
          din,
          Sin,
          
          -- output port
          dout,
          Sout
        );

        
    clk_gen: PROCESS 
    CONSTANT T : time := 10 ns; 
    BEGIN
        clk <= '0';
        WAIT FOR T/2;
        clk <= '1';
        WAIT FOR T/2;
    END PROCESS;
    
    tb1 : PROCESS
        CONSTANT period: time := 10 ns;
        BEGIN
            WAIT FOR 4 ns; -- bias beine clock va assign ha
            
            Shty   <= "11"; -- parallel load
            din    <= std_logic_vector(to_unsigned(0, n));
            Sham   <= std_logic_vector(to_unsigned(0, nLog2));
            dir    <= '0'; 
            Sin    <= '0';
            
            nRst  <= '0';
            WAIT FOR period;
            
            nRst  <= '1';
            WAIT FOR period;
             
             
            Shty   <= "11"; -- parallel load
            din    <= std_logic_vector(to_unsigned(13, n));
            Sham   <= std_logic_vector(to_unsigned(0, nLog2));
            dir    <= '0'; 
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 13
            ) REPORT "load 13 failed" SEVERITY ERROR;
            
            
            Shty   <= "00"; -- logical shift
            din    <= std_logic_vector(to_unsigned(8, n));
            Sham   <= std_logic_vector(to_unsigned(0, nLog2)); -- 0 ta shift
            dir    <= '1'; -- right
            Sin    <= '1';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 8
                and Sout = '0'
            ) REPORT "logical shift right Sham=0 failed" SEVERITY ERROR;
            
            Shty   <= "11"; -- parallel load
            din    <= std_logic_vector(to_unsigned(1024, n));
            Sham   <= std_logic_vector(to_unsigned(0, nLog2));
            dir    <= '0'; 
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 1024
                AND Sout = '0'
            ) REPORT "load 1024 failed" SEVERITY ERROR;              
                 

            Shty   <= "00"; -- logical shift
            dir    <= '1'; -- right
            
            din    <= std_logic_vector(to_unsigned(14, n));
            Sham   <= std_logic_vector(to_unsigned(1, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 7
                AND Sout = '0'
            ) REPORT "logical shift right 14 failed" SEVERITY ERROR;
            
            Shty   <= "00"; -- logical shift
            dir    <= '1'; -- right
            
            din    <= std_logic_vector(to_unsigned(15, n));
            Sham   <= std_logic_vector(to_unsigned(1, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 7
                AND Sout = '1'
            ) REPORT "logical shift right 15 failed" SEVERITY ERROR;

            
            Shty   <= "00"; -- logical shift
            dir    <= '1'; -- right
            din    <= std_logic_vector(to_unsigned(1432, n));
            Sham   <= std_logic_vector(to_unsigned(10, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 1
                and Sout = '0'
            ) REPORT "logical shift right 1432 failed" SEVERITY ERROR;
            
            
            Shty   <= "00"; -- logical shift
            dir    <= '0'; -- left
            
            din    <= std_logic_vector(to_unsigned(14, n));
            Sham   <= std_logic_vector(to_unsigned(1, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 28
                and Sout = '0'
            ) REPORT "logical shift left 14 failed" SEVERITY ERROR;

            
            Shty   <= "00"; -- logical shift
            dir    <= '0'; -- left
            din    <= std_logic_vector(to_unsigned(143, n));
            Sham   <= std_logic_vector(to_unsigned(10, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 143 * 1024
                and Sout = '0'
            ) REPORT "logical shift left 143 failed" SEVERITY ERROR;

            Shty   <= "00"; -- logical shift
            dir    <= '0'; -- left
            din    <= std_logic_vector(to_unsigned(2**30-1, n));
            Sham   <= std_logic_vector(to_unsigned(10, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                --to_integer(unsigned(dout)) = 0
                Sout = '0'
            ) REPORT "logical shift left 2 pow n failed" SEVERITY ERROR;

                
            Shty   <= "01"; -- arith shift
            dir    <= '1'; -- right
            din    <= std_logic_vector(to_unsigned(50, n));
            Sham   <= std_logic_vector(to_unsigned(2, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(unsigned(dout)) = 12
               and  Sout = '0'
            ) REPORT "arith shift right unsigned failed" SEVERITY ERROR;
    
                
            Shty   <= "01"; -- arith shift
            dir    <= '1'; -- right
            din    <= std_logic_vector(to_signed(-50, n));
            Sham   <= std_logic_vector(to_unsigned(2, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                to_integer(signed(dout)) < 0
               and  Sout = '0'
            ) REPORT "arith shift right signed failed" SEVERITY ERROR;
            
            
            Shty   <= "10"; -- circular
            dir    <= '1'; -- right
            din    <= x"0000000" & "1010";
            Sham   <= std_logic_vector(to_unsigned(2, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                dout = b"10" & x"0000000" & "10" 
               and  Sout = '0'
            ) REPORT "ciruclar shift right signed failed" SEVERITY ERROR;
            
            Shty   <= "10"; -- circular
            dir    <= '0'; -- right
            din    <= x"0000000" & "1010";
            Sham   <= std_logic_vector(to_unsigned(2, nLog2));
            Sin    <= '0';
            WAIT FOR period;
            ASSERT (
                dout = x"0000000" & "101000" 
               and  Sout = '0'
            ) REPORT "ciruclar shift right signed failed" SEVERITY ERROR;
            
            
            
            WAIT;
        END PROCESS;

END;
