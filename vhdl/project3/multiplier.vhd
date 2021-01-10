lIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY multiplier IS
    GENERIC(
        n : integer := 8
    );
	PORT (
        a : IN  std_logic_vector(n-1 DOWNTO 0);
	    b : IN  std_logic_vector(n-1 downto 0);
        c : OUT std_logic_vector(2*n-1 downto 0)
    );
END multiplier;

ARCHITECTURE Behavioral OF multiplier IS
	SUBTYPE plary IS std_logic_vector(n-1 DOWNTO 0);
	TYPE pary is ARRAY(0 TO n) OF plary;
	
	SIGNAL andAB   : pary;
	SIGNAL carryHa : pary;
	SIGNAL sumHa   : pary;
BEGIN
	
	for1:FOR j IN 0 TO n-1 GENERATE
		andFor:FOR k IN 0 TO n-1 GENERATE
			andAB(j)(k) <= a(k) AND b(j); -- and ha 2 tayee ro hesab konim
		END GENERATE;
		carryHa(0)(j)<='0'; -- carry in ro be avali bedim
	END GENERATE;
	
	sumHa(0) <= andAB(0);    -- baraye star e aval sum hamun and mishe
	c(0)     <= andAB(0)(0); -- bit e 0 javab
	
	addr:FOR j IN 1 TO n-1 GENERATE
		addc:FOR k IN 0 TO n-2 GENERATE
			sumHa(j)(k) <= andAB(j)(k)
                        XOR carryHa(j-1)(k)
                        XOR sumHa(j-1)(k+1);
                       
			carryHa(j)(k) <= (andAB(j)(k) AND carryHa(j-1)(k))
                          OR (andAB(j)(k) AND sumHa(j-1)(k+1))
                          OR (carryHa(j-1)(k)AND sumHa(j-1)(k+1));
		END GENERATE;
		c(j)          <= sumHa(j)(0); -- payeen ime ye rast
		sumHa(j)(n-1) <= andAB(j)(n-1);
    END GENERATE;
    
    carryHa(n)(0) <= '0'; -- bala chap 0 ro bedim
    
	addlast:FOR k IN 1 TO n-1 GENERATE -- be jaye FA , HA xor , or , and 
		sumHa(n)(k) <= carryHa(n)(k-1) 
                    XOR carryHa(n-1)(k-1)
                    XOR sumHa(n-1)(k);
		carryHa(n)(k) <= (carryHa(n)(k-1) AND carryHa(n-1)(k-1)) 
                    OR (carryHa(n)(k-1) AND sumHa(n-1)(k)) 
                    OR (carryHa(n-1)(k-1)AND sumHa(n-1)(k));
	END GENERATE;
	
	c(2*n-1) <= carryHa(n)(n-1);  -- payeen chap: hamun cout akhar mishe
	c(2*n-2 DOWNTO n) <= sumHa(n)(n-1 DOWNTO 1); -- FA haye paeen chap
	
END Behavioral;
