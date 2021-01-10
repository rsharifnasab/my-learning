LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY elevator IS 
    PORT(
        nrst            :   IN std_logic;
        clk             :   IN std_logic;

        come            :   IN std_logic_vector(4 DOWNTO 1);
        switch          :   IN std_logic_vector(4 DOWNTO 1);
        go              :   IN std_logic_vector(4 DOWNTO 1);

        motor_up        :   OUT std_logic;
        motor_down      :   OUT std_logic;
        current_floor   :   OUT std_logic_vector(1 DOWNTO 0);
        move_state      :   OUT std_logic_vector(1 DOWNTO 0)
    );
END elevator;

ARCHITECTURE state_machine OF elevator IS
    TYPE state IS (
         s1,      s2,          s3,       s4,  -- steady
        s1u,   s2u, s2d,    s3u, s3d,    s4d  -- moving
        -- there is no s1d or s4u =))
    );
    
    SIGNAL current_state, next_state: state;
    SIGNAL move : std_logic_vector(4 DOWNTO 1);  -- bayad harekat kone

    -- move_state :
    --     00 : steady 
    --           01 : up 
    --                10 : down
    -- current_floor-> 00 : 4 , 01 : 1 , 10 : 2 , 11 : 3 

BEGIN

    move <= go OR come; -- button is pressed let's move =)

    handle_next_state: PROCESS(nrst, clk) BEGIN 
        IF nrst = '0' THEN 
            current_state <= s1;
        ELSIF clk = '1' AND clk'EVENT THEN 
            current_state <= next_state; -- labe bala ravande boro state ba'di
        END IF;
    END PROCESS;
    
    
    
    next_state_logic: PROCESS(move, current_state, switch) BEGIN
        -- --- --- we are in steady place --- --- --
        
        IF move = "0000" THEN -- hastim :)
            next_state <= current_state;
            
            
        ELSIF current_state = s1 THEN
            IF NOT (move(1) = '1') THEN -- ye jayee bayad berim ke inja nist
                next_state <= s1u;      -- hatman bala miravim (chon ma ze balayaeem o bala miravim
            END IF;

        ELSIF current_state = s2 THEN
            IF NOT (move(2) = '1') THEN -- age bayad ye jayee berim joz inja
                report "salam";
                IF move = "0001" THEN -- bayad paeen berim (t1)
                    next_state <= s2d;
                ELSE 
                    next_state <= s2u;
                    report "up";
                END IF;
            END IF;

        ELSIF current_state = s3 THEN
            IF NOT (move(3) = '1') THEN -- age bayad berim
                IF move(4) = '1' THEN -- olaviat ba bala raftan
                    next_state <= s3u;
                ELSE
                    next_state <= s3d;
                END IF;
            END IF;

        ELSIF current_state = s4 THEN
            IF NOT move(4) = '1' THEN -- age paeen bayad miraftim
                next_state <= s4d;
            END IF;
               -- inja state e bala nadare
            
            
        -- --- --- we are moving --- --- --
        ELSIF current_state = s1u THEN
            IF switch(2) = '1' THEN -- residim tabaghe 2
                IF move(2) = '1' THEN -- tabaghe 2 maghsad boud 
                     next_state <= s2;
                ELSIF move(3) = '1' OR move(4) = '1' THEN -- baz batad berim
                    next_state <= s2u;
                ELSE
                    next_state <= s2;
                END IF;
            END IF;

        ELSIF current_state = s2u THEN
            IF switch(3) = '1' THEN
                IF move(3) = '1' THEN
                    next_state <= s3;
                ELSIF move(4) = '1' THEN
                    next_state <= s3u;
                ELSE 
                    next_state <= s3;
                END IF;
            END IF;
            
        ELSIF current_state = s2d THEN
            IF switch(1) = '1' THEN -- residim tabaghe 1
                next_state <= s1;
            END IF;

        ELSIF current_state = s3u THEN -- residim tabaghe4
            IF switch(4) = '1' THEN
                next_state <= s4;
            END IF;
        
        ELSIF current_state = s3d THEN
            IF switch(2) = '1' THEN -- 2 hastim
                IF move(2) = '1' THEN -- 2 maghsade 
                    next_state <= s2;
                ELSIF move(1) = '1' THEN -- az 2 migzarim
                    next_state <= s2d;
                ELSE
                    next_state <= s2;
                END IF;
            END IF;

        ELSIF current_state = s4d THEN
            IF switch(3) = '1' THEN -- residim 3
                IF move(3) = '1' THEN  -- maghsad 3 ast
                    next_state <= s3;
                ELSE
                    next_state <= s3d;
                END IF;
            END IF;
        END IF;

    END PROCESS;

    -- set motors based on states
    interpret_state: PROCESS(nrst, clk) BEGIN
    IF nrst = '0' THEN -- reset
        move_state <= "00";
        current_floor <= "01";
        motor_up <= '0';
        motor_down <= '0';
    ELSIF clk = '1' AND clk'EVENT THEN 
        -- motors off
        IF next_state = s1 THEN
            move_state <= "00";
            current_floor <= "01";
            motor_up <= '0';
            motor_down <= '0';
        ELSIF next_state = s2 THEN
            move_state <= "00";
            current_floor <= "10";
            motor_up <= '0';
            motor_down <= '0';
        ELSIF next_state = s3 THEN
            move_state <= "00";
            current_floor <= "11";
            motor_up <= '0';
            motor_down <= '0';
        ELSIF next_state = s4 THEN
            move_state <= "00";
            current_floor <= "00";
            motor_up <= '0';
            motor_down <= '0';
            
        -- moving up    
        ELSIF next_state = s1u THEN
            current_floor <= "01";
            move_state <= "01";
            motor_up <= '1';
            motor_down <= '0';
        ELSIF next_state = s2u THEN
            current_floor <= "10";
            move_state <= "01";
            motor_up <= '1';
            motor_down <= '0';
        ELSIF next_state = s3u THEN
            current_floor <= "11";
            move_state <= "01";
            motor_up <= '1';
            motor_down <= '0';
        
        -- moving down
        ELSIF next_state = s2d THEN
            current_floor <= "10";
            move_state <= "10";
            motor_up <= '0';
            motor_down <= '1';
        
        ELSIF next_state = s3d THEN
            current_floor <= "11";
            move_state <= "10";
            motor_up <= '0';
            motor_down <= '1';
        ELSIF next_state = s4d THEN
            current_floor <= "00"; -- 4 is encoded as 00
            move_state <= "10";
            motor_up <= '0';
            motor_down <= '1';
        END IF;
    END IF;
    END PROCESS;


END state_machine;

