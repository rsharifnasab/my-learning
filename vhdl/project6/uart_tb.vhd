LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--USE ieee.std_logic_unsigned.ALL;
--USE ieee.numeric_STD.to_unsigned;
USE ieee.numeric_STD.ALL;


ENTITY uart_tb IS

END uart_tb;

ARCHITECTURE test of uart_tb IS
    CONSTANT N	: integer := 8;

    SIGNAL clk_t 	: std_logic;
    SIGNAL nrst_t 	: std_logic := '1';
    SIGNAL start_t	: std_logic;
    SIGNAL data_in_t: STD_LogiC_VECTOR(N-1 DOWNTO 0);
    SIGNAL baud_t	: STD_LogiC_VECTOR(N-1 DOWNTO 0);
    SIGNAL rx_t	: STD_LOGIC;
    SIGNAL tx_t	: STD_LOGIC;
    SIGNAL data_ready_t: STD_LOGIC;
    SIGNAL data_out_t: STD_LOGIC_VECTOR(N-1 DOWNTO 0);

    SIGNAL b         : integer := 2;
BEGIN
    UUT : entity work.uart port map (
            clk       => clk_t,
            nrst      => nrst_t,
            
            start     => start_t,
            data_in   => data_in_t,
            data_ready => data_ready_t,
            baud => baud_t,
            data_out => data_out_t,
            
            Rx => Rx_t,
            Tx => Tx_t
        );
    
    
    clock_gen: PROCESS
    CONSTANT T : time := 2 ns;
    BEGIN 
        clk_t <= '0';
        WAIT FOR T/2;
        clk_t <= '1';
        WAIT FOR T/2;
    END PROCESS;
    
    baud_t <= std_logic_vector(to_unsigned(b, 8));
    
    test: PROCESS 
        CONSTANT period: time := 2 ns;
    BEGIN
        
        -- p2s test
        
        nrst_t <= '0';
        start_t <= '0';
        
        
        WAIT FOR 3*period;
        
        ASSERT (
            Tx_t='1'
        ) REPORT "reset failed" SEVERITY ERROR;
        
        nrst_t <= '1';

        data_in_t <= "01000111";
        b <= 1;
        
        WAIT FOR 3*period;
        
        ASSERT (
            Tx_t='1'
        ) REPORT "wait for start failed" SEVERITY ERROR;
        
        start_t <= '1';
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "0 after start failed" SEVERITY ERROR;
        
        
        start_t <= '0';

        -- -- -- 
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "bit 0 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "bit 1 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "bit 2 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 3 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 4 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 5 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "bit 6 failed" SEVERITY ERROR;
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 7 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "1 after data 7 failed" SEVERITY ERROR;
        
        
        
        nrst_t <= '0';
        WAIT FOR period*5;
        nrst_t <= '1';
        
        
        
        data_in_t <= "01000001";
        b <= 3;
        
        WAIT FOR period;
        
        ASSERT (
            Tx_t='1'
        ) REPORT "test 2: wait for start failed" SEVERITY ERROR;
        
        start_t <= '1';
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "test2: 0 after start failed" SEVERITY ERROR;
        start_t <= '0';
        

         -- -- -- 
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "bit 0 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 1 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 2 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 3 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 4 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "bit 5 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "t2:bit 6 failed" SEVERITY ERROR;
        
        WAIT FOR period*b;
        ASSERT (Tx_t='0') REPORT "t2:bit 7 failed" SEVERITY ERROR;
        
        
        WAIT FOR period*b;
        ASSERT (Tx_t='1') REPORT "1 after data 7 failed" SEVERITY ERROR;
     
        
        
        -- s2p test
        
        Rx_t <= '1';
        WAIT FOR period*10; -- looong wait
        
        
        
        Rx_t <= '0'; -- start
        WAIT FOR period;
        
        
        Rx_t <= '0'; -- bit0
        WAIT FOR period*b;
        
        Rx_t <= '0'; -- bit1
        WAIT FOR period*b;
        
        Rx_t <= '0'; -- bit2
        WAIT FOR period*b;
        
        Rx_t <= '0'; -- bit3
        WAIT FOR period*b;
        
        Rx_t <= '0'; -- bit4
        WAIT FOR period*b;
        
        Rx_t <= '0'; -- bit5
        WAIT FOR period*b;
        
        Rx_t <= '0'; -- bit6
        WAIT FOR period*b;
        
        Rx_t <= '0'; -- bit7
       -- WAIT FOR period*b;
        
        
        ASSERT (
            data_out_t="10011011" and
            data_ready_t = '1'
        ) REPORT "stp failed" SEVERITY ERROR;

        
        Rx_t <= '1'; -- stable mode
        
     
        
        WAIT;
        
        
        
    END PROCESS;

END test;

