LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

ENTITY uart IS
    GENERIC (
                N : integer := 8
            );
    PORT(
            clk:            IN  STD_LOGIC;
            nRst:           IN  STD_LOGIC;

            Start:          IN  STD_LOGIC;
            data_in:        IN  STD_LogiC_VECTOR(N-1 DOWNTO 0);
            data_out:       OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) := "00000000";


            data_ready:     OUT STD_LOGIC;
            baud:           IN  STD_LogiC_VECTOR(N-1 DOWNTO 0);

            Rx:             IN  STD_LOGIC;
            Tx:             OUT STD_LOGIC
        );
END uart;

ARCHITECTURE impl OF UART IS

    TYPE STATE IS (s0, s1, s2);

    SIGNAL pts_next, pts_current: STATE := s0;


    SIGNAL pts_current_c    : INTEGER := 0;
    SIGNAL pts_next_c       : INTEGER := 0;
    SIGNAL pts_current_cb   : INTEGER := 0;
    SIGNAL pts_next_cb      : INTEGER := 0;

    SIGNAL stp_next, stp_current: STATE := s0;
    SIGNAL stp_current_c    : INTEGER := 0;
    SIGNAL stp_next_c       : INTEGER := 0;
    SIGNAL stp_current_bc   : INTEGER := 0;
    SIGNAL stp_next_bc      : INTEGER := 0;

    SIGNAL baud_i       : integer;

BEGIN
    baud_i <= to_integer(unsigned(baud));

    state_changer: PROCESS(clk, nrst)
    BEGIN
        IF nRst = '0' THEN -- async reset
            pts_current <= s0;
            pts_current_c <= 0;
            pts_current_cb <= 0;

            stp_current <= s0;
            stp_current_c <= 0;
            stp_current_bc <= 0;
        ELSIF clk'EVENT AND clk = '1' THEN -- rising edge
            pts_current       <= pts_next;
            pts_current_c     <= pts_next_c;
            pts_current_cb    <= pts_next_cb;

            stp_current    <= stp_next;
            stp_current_c  <= stp_next_c;
            stp_current_bc <= stp_next_bc;
        END IF;
    END PROCESS state_changer;


        -- parallel to serial process
        -- baud_i va data_in  mishe ham nabashan dar sensitivity list
    pts: PROCESS(pts_current, pts_current_c, pts_current_cb, start, baud_i, data_in)
    BEGIN
                -- s0 -> before start
                -- tx = 1
                -- if start = 1 -> s1
        IF pts_current = s0 THEN
            pts_next_c <= 0;
            pts_next_cb <= 0;
            tx <= '1';
            IF start = '1' THEN
                pts_next <= s1;
            ELSE
                pts_next <= s0;
            END IF;

                -- s1 -> after start before actual work =)
                -- tx = 0
                -- before actual work
                -- after baud block: lets start!
        ELSIF pts_current = s1 THEN
            pts_next_c <= 0;
            tx <= '0';
            IF pts_current_cb = baud_i - 1 THEN
                pts_next <= s2;
                pts_next_cb <= 0;
            ELSE
                pts_next <= s1;
                pts_next_cb <= pts_current_cb +  1;
            END IF;

                -- s2 -> each baud block: send next bit
                -- each block: increase baud counter
                -- after n * baud clock: go to s3
        ELSIF pts_current = s2 THEN
                        -- ersal :)

                        -- har N bit ro ferestadim
            IF pts_current_c = N-1 THEN
                                -- be andaze baud ham sabr kardim
                                -- berim bara s0
                IF pts_current_cb = baud_i - 1 THEN
                    pts_next <= s0;
                    tx <= data_in(pts_current_c);
                    pts_next_c <= 0;
                    pts_next_cb <= 0;
                ELSE -- montezer e kamel shodan baud hastim
                    pts_next <= s2;
                    tx <= data_in(pts_current_c);
                    pts_next_c <= pts_current_c;
                    pts_next_cb <= pts_current_cb + 1;
                END IF;

            ELSE -- hanouz n bit kamel nashode
                 -- be andaze baud sabr kardim, berim bit e ba'd
                IF pts_current_cb = baud_i - 1 THEN
                    pts_next <= s2;
                    tx <= data_in(pts_current_c);
                    pts_next_c <= pts_current_c + 1;
                    pts_next_cb <= 0;
                ELSE -- baud kamel nashode, mimunim hamin bit
                    pts_next <= s2;
                    tx <= data_in(pts_current_c);
                    pts_next_c <= pts_current_c;
                    pts_next_cb <= pts_current_cb + 1;
                END IF;
            END IF;
        ELSE
        END IF;
    END PROCESS pts;

        -------------------------------------------------------

        -------------------------------------------------------


    stp: PROCESS(stp_current, stp_current_c, stp_current_bc, rx)
    BEGIN

                -- wating for rx to be 0
        IF stp_current = s0 THEN
            stp_next_c <= 0;
            stp_next_bc <= 0;
            data_ready <= '0';
            data_out <= "ZZZZZZZZ";
            IF rx = '1' THEN
                stp_next <= s0;
            ELSE
                stp_next <= s1;
            END IF;

        ELSE -- stp_current = s1
             -- bit ha tamum shod
            IF stp_current_c = N-1 THEN
                -- hame data ro gereftim
                -- be andaze baud ham sabr kardim
                -- data is ready
                data_ready <= '1';

                IF stp_current_bc = baud_i - 1 THEN
                    stp_next <= s0;
                    stp_next_c <= 0;
                    stp_next_bc <= 0;
                ELSE
                                        -- hame data ro gereftim
                                        -- montazer e baud hastim
                    stp_next <= s1;
                    data_ready <= '0';
                    stp_next_c <= stp_current_c;
                    stp_next_bc <= stp_current_bc + 1;
                END IF;

                        -- hanuz bit mounde
                        -- berim bit e ba'd
            ELSE
                stp_next <= s1;
                data_ready <= '0';
                data_out(stp_current_c) <= rx;
                -- ye baud sabr kardim
                IF stp_current_bc = baud_i - 1 THEN
                    stp_next_c <= stp_current_c + 1;
                    stp_next_bc <= 0;
                ELSE
                    -- bayad baraye naud sabr konm
                    stp_next_c <= stp_current_c;
                    stp_next_bc <= stp_current_bc + 1;
                END IF;
            END IF;

        END IF;
    END PROCESS stp;


END impl;

