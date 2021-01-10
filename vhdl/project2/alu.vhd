LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_STD.ALL; 

ENTITY ALU_32bit IS
	GENERIC (
                n : integer := 32
        );
	
	PORT 
	(
		cin  	        : IN  std_logic;
		sin		: IN  std_logic;
		func 	        : IN  std_logic_vector(3 DOWNTO 0);
		
		A 		: IN  std_logic_vector(n-1 DOWNTO 0);
		B		: IN  std_logic_vector(n-1 DOWNTO 0);
		
		sout 	        : OUT  std_logic;
		cout 	: OUT std_logic;
		Ov   	        : OUT std_logic;
		
		Z  		: OUT std_logic_vector(n-1 DOWNTO 0)
	);
END ALU_32bit;


ARCHITECTURE behavioral OF ALU_32bit IS
	SIGNAL temp : std_logic_vector (n DOWNTO 0);
BEGIN
	PROCESS(cin, sin, func, A, B, temp) -- temp ro ezafe kardim ta do bar anjam beshe va sync beshe
	BEGIN
		CASE fUNC IS 
			WHEN "0000"=>  -- -B
				Z <=   std_logic_vector(
                                                to_signed((-1  *  to_integer(signed(B))),32));
				
				Ov <= '0';
				sout <= '0';
				cout <= '0';
			
			WHEN "0001"=>  -- A + B
				temp <=  std_logic_vector(
                                        to_signed(to_integer(signed(A)) + to_integer(signed(B)) , n+1)
                                );
				z <= temp(n-1 downto 0);
				Ov <= temp(n) XOR temp(n-1);
				sout <= '0';
				cout <= temp(n);
				
			WHEN "0010"=>  -- A + B + cin
				temp <=  std_logic_vector(
                                        to_signed(
                                                        to_integer(signed(A)) + 
                                                        to_integer(signed(B)) +
                                                        to_integer(unsigned'('0' & cin))
                                                        , n+1)
                                );
				z <= temp(n-1 downto 0);
				Ov <= temp(n) XOR temp(n-1);
				sout <= '0';
				cout <= temp(n);
			
			WHEN "0011"=>  -- A - B 
				temp <=  std_logic_vector(
                                        to_signed(to_integer(signed(A)) - to_integer(signed(B)) , n+1)
                                );
				z <= temp(n-1 downto 0);
				Ov <= temp(n) XOR temp(n-1);
				sout <= '0';
				cout <= temp(n);
			
			
			WHEN "0100"=>  -- -B (2's compliment)
				Z <=   std_logic_vector(
                                                to_signed((-1  *  to_integer(unsigned(B))),32));
				
				Ov <= '0';
				sout <= '0';
				cout <= '0';
			
			
			WHEN "0101"=>  -- not B 
				Z <=  NOT B;
				Ov <= '0';
				sout <= '0';
				cout <= '0';
			
			WHEN "0110"=>  -- A and B
				Z <=  A AND B;
				Ov <= '0';
				sout <= '0';
				cout <= '0';
				
			WHEN "0111"=>  -- A or B 
				Z <=  A OR B;
				Ov <= '0';
				sout <= '0';
				cout <= '0';
			
			WHEN "1000"=>  -- A xor B
				Z <=  A XOR B;
				Ov <= '0';
				sout <= '0';
				cout <= '0';
				
			WHEN "1001"=>  -- one bit LSL A
				Z <=  A (n-2 DOWNTO 0) & '0';
				Ov <= '0';
				sout <= '0';
				cout <= '0';
			WHEN "1010"=>  -- one bit LSR A
				Z <=  '0' & A (n-1 DOWNTO 1);
				Ov <= '0';
				sout <= '0';
				cout <= '0';
				
			WHEN "1011"=>  --   One bit circular left shift of A, input bit is sin, output bit is sout
                                Z <=  A (n-2 DOWNTO 0) & sin;
				Ov <= '0';
				sout <= A(n-1);
				cout <= '0';
			
			WHEN "1100"=>  --   One bit circular right shift of A, input bit is sin, output bit is sout
                                Z <=  sin & A (n-1 DOWNTO 1);
				Ov <= '0';
				sout <= A(n-1);
				cout <= '0';
				
				
			WHEN "1101"=> -- A > B (unsigned)
				IF(A>B) THEN
					Z <=  (n - 2 downto 0 => '0') & '1' ;
				ELSE
					Z <= (OTHERS => '0' );
				END IF;
				Ov <= '0';
				sout <= '0';
				cout <= '0';
			
			WHEN "1110"=> -- B > A (unsinged)
				IF(A<B) THEN
					Z <=  (n - 2 downto 0 =>'0') & '1';
				ELSE
					Z <= (OTHERS => '0' );
				END IF;
				Ov <= '0';
				sout <= '0';
				cout <= '0';
			
			WHEN "1111"=>  -- A = B
				IF(A=B) THEN
					Z <= (n - 2 downto 0 =>'0') & '1';
				ELSE
					Z <= (OTHERS => '0' );
				
				END IF;
				Ov <= '0';
				sout <= '0';
				cout <= '0';
				
			WHEN OTHERS =>
				Z <= (OTHERS => 'Z');
				Ov <= '0';
				sout <= '0';
				cout <= '0';
		END CASE;
	END PROCESS;
END behavioral;
