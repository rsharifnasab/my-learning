LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_STD.ALL;


ENTITY elev_control_tb IS

END elev_control_tb;

ARCHITECTURE test of elev_control_tb IS
    COMPONENT elevator IS
        PORT(
            nrst    :    IN std_logic;
            clk     :    IN std_logic;
    
            come    :    IN std_logic_vector(4 DOWNTO 1);
            switch  :    IN std_logic_vector(4 DOWNTO 1);
            go      :    IN std_logic_vector(4 DOWNTO 1);
    
            motor_up        :     OUT std_logic;
            motor_down      :     OUT std_logic;
            current_floor   :     OUT std_logic_vector(1 DOWNTO 0);
            move_state      :     OUT std_logic_vector(1 DOWNTO 0)

        );
    END COMPONENT;

    SIGNAL  nrst_tb           :   std_logic;
    SIGNAL  clk_tb            :   std_logic;
    
    SIGNAL  come_tb           :   std_logic_vector(4 DOWNTO 1) := "0000";
    SIGNAL  switch_tb         :   std_logic_vector(4 DOWNTO 1) := "0001";
    SIGNAL  go_tb             :   std_logic_vector(4 DOWNTO 1) := "0000";  

    SIGNAL  motor_up_tb       :   std_logic;
    SIGNAL  motor_down_tb     :   std_logic;
    SIGNAL  current_floor_tb  :   std_logic_vector(1 DOWNTO 0);
    SIGNAL  move_state_tb     :   std_logic_vector(1 DOWNTO 0);
    
BEGIN
    uut: elevator PORT MAP(
        nrst_tb,
        clk_tb,
        come_tb,
        switch_tb,
        go_tb,
        motor_up_tb,
        motor_down_tb,
        current_floor_tb,
        move_state_tb
    );


    clock_gen: PROCESS
    CONSTANT T : time := 2 ns;
    BEGIN 
        clk_tb <= '0';
        WAIT FOR T/2;
        clk_tb <= '1';
        WAIT FOR T/2;
    END PROCESS;
    
    
    test: PROCESS 
        CONSTANT period: time := 10 ns;
    BEGIN
    -- move_state :
    --     00 : steady 
    --           01 : up 
    --                10 : down
    -- current_floor-> 00 : 4 , 01 : 1 , 10 : 2 , 11 : 3 

        nrst_tb <= '0';
        WAIT FOR period/2;
         ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "01" AND
            move_state_tb     = "00"
        ) REPORT "reset failed" SEVERITY ERROR;
            
        
        nrst_tb <= '1';
        WAIT FOR period/2;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "01" AND
            move_state_tb     = "00"
        ) REPORT "after reset failed" SEVERITY ERROR;
       
        
        go_tb <= "0001";
        come_tb <= "0000";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "01" AND
            move_state_tb     = "00"
        ) REPORT "tavaghof dar tabaghe yek failed" SEVERITY ERROR;
       

        go_tb <= "1000";
        switch_tb <= "0001";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '1' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "01" AND
            move_state_tb     = "01"
        ) REPORT "harekat tabaghe 1 be bala failed" SEVERITY ERROR;
       

        switch_tb <= "0010";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '1' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "10" AND
            move_state_tb     = "01"
        ) REPORT "harekat tabaghe 2 be bala failed" SEVERITY ERROR;
       

        
        switch_tb <= "0100";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '1' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "11" AND
            move_state_tb     = "01"
        ) REPORT "harekat tabaghe 3 be bala failed" SEVERITY ERROR;

        
        switch_tb <= "1000";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "00" AND
            move_state_tb     = "00"
        ) REPORT "residan be tabaghe 4 failed" SEVERITY ERROR;


        go_tb <= "0010";
        come_tb <= "1000";        
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "00" AND
            move_state_tb     = "00"
        ) REPORT "sabet mandan dar 4 failed" SEVERITY ERROR;

        
        go_tb <= "0010";
        come_tb <= "0100";        
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '1' AND 
            current_floor_tb  = "00" AND
            move_state_tb     = "10"
        ) REPORT "4 be payin failed" SEVERITY ERROR;

        
        switch_tb <= "0100";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "11" AND
            move_state_tb     = "00"
        ) REPORT "sabet mandan dar 3 failed" SEVERITY ERROR;


        come_tb <= "0000";        
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '1' AND 
            current_floor_tb  = "11" AND
            move_state_tb     = "10"
        ) REPORT "3 be payin failed" SEVERITY ERROR;

        come_tb <= "0001";        
        switch_tb <= "0010";
        go_tb <= "0100";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '1' AND 
            current_floor_tb  = "10" AND
            move_state_tb     = "10"
        ) REPORT "2 be bala failed" SEVERITY ERROR;


        switch_tb <= "0001";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "01" AND
            move_state_tb     = "00"
        ) REPORT "1 sabet failed" SEVERITY ERROR;

        come_tb <= "0000";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '1' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "01" AND
            move_state_tb     = "01"
        ) REPORT "1 be bala failed" SEVERITY ERROR;


        
        switch_tb <= "0010";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '1' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "10" AND
            move_state_tb     = "01"
        ) REPORT "2 be bala failed" SEVERITY ERROR;

        switch_tb <= "0100";
        WAIT FOR period;
        ASSERT (
            motor_up_tb        = '0' AND
            motor_down_tb      = '0' AND 
            current_floor_tb  = "11" AND
            move_state_tb     = "00"
        ) REPORT "3 tavaghof failed" SEVERITY ERROR;

        WAIT;
    END PROCESS;


END test;
