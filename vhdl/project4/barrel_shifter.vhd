lIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_STD.ALL; 


ENTITY barrel_shifter IS
    GENERIC(
        n     : integer := 32;
        nLog2 : integer := 5
    );
    PORT(
        CLK  : IN  std_logic;
        -- clock

        nRst : IN  std_logic;
        -- not reset

        Sham : IN  std_logic_vector(nLog2-1 DOWNTO 0);
        -- number of bits to be shifter
        -- 0 to 31

        Shty : IN  std_logic_vector(1 DOWNTO 0);
        -- opcode    00    01    10   11
        --       logical shift
        --               arithmethic shift
        --                      circular shift
        --                          parallel load

        dir  : IN  std_logic;
        -- left (0) or right (1) shift

        din  : IN  std_logic_vector(n-1 DOWNTO 0);
        -- input for parallel load

        Sin  : IN  std_logic;
        -- 

        dout : OUT std_logic_vector(n-1 DOWNTO 0);
        Sout : OUT std_logic


    );
END barrel_shifter;


ARCHITECTURE impl OF barrel_shifter IS
    SIGNAL temp : std_logic_vector(n-1 DOWNTO 0);
    
BEGIN
        PROCESS(clk, temp)
            VARIABLE ShamI      : integer;
        BEGIN
            ShamI      := to_integer(unsigned(Sham));
        
            IF clk = '1' THEN
                IF nrst = '0' THEN  -- reset synchron with clock
                    temp <= (OTHERS => '0');
                ELSE
                    CASE Shty IS -- mode
                        WHEN "00"=>
                            --     logical shift
                            IF Dir THEN  -- Sham right 
                               temp <=  (1 TO ShamI => Sin) & din(n-1 DOWNTO shamI);
                               Sout <=  din(0);
                            ELSE           -- left 
                               temp <=  din(n-1-ShamI dOWNTO 0) & (1 to ShamI => Sin);
                               Sout <=  din(n-1);
                            END IF;       
                            
                        WHEN "01"=>
                        --      arithmethic shift
                            IF Dir THEN  -- Sham right 
                               temp <=  (1 TO ShamI => din(n-1)) & din(n-1 DOWNTO shamI);
                               Sout <=  din(0);
                            ELSE           -- left (same)
                               temp <=  din(n-1-ShamI dOWNTO 0) & (1 to ShamI => Sin);
                               Sout <=  din(n-1);
                            END IF;       
                        
                        WHEN "10"=>
                            --  circular shift
                            IF Dir THEN  -- Sham right 
                                temp <=  din(ShamI-1 dOWNTO 0) & din(n-1 DOWNTO shamI);
                                Sout <=  din(0);
                            ELSE         -- left (same)
                                temp <=  din(n-1-ShamI dOWNTO 0) & din(n-1 dOWNTO n-ShamI);
                                Sout <=  din(n-1);
                            END IF;       
                        
                        WHEN "11"=>
                        --   parallel load
                            temp <= din; -- nLog2 DOWNTO 1 => (n-1 DOWNTO 0 =>'Z'));  
                            Sout <= '0';

                            
                        WHEN OTHERS =>
                            dout <= (OTHERS => 'Z');
                            Sout <= 'Z';
                    END CASE;
                    
                    
                END IF;
            END IF;
            dout <= temp;

        END PROCESS;

END impl;
