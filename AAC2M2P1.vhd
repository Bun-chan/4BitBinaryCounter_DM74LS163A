--VHDL 74LS163 Binary Counter
--2022-11-02


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity BinaryCounter is port (                 	
   CP: 	in std_logic; 	-- clock
   SR:  in std_logic;  -- Active low, synchronous reset
   P:    in std_logic_vector(3 downto 0);  -- Parallel input
   PE:   in std_logic;  -- Parallel Enable (Load)
   CEP: in std_logic;  -- Count enable parallel input
   CET:  in std_logic; -- Count enable trickle input
   Q:   out std_logic_vector(3 downto 0);            			
    TC:  out std_logic  -- Terminal Count
);            		
end BinaryCounter;
--is TC the output or is Q the output?
architecture count of BinaryCounter is

	signal temp_output : std_logic_vector(3 downto 0) := "0000"; --use this as the count. Q can not be read. So set temp_output and then read it to set Q.
	begin
	count_process : process (CP) is
	begin
		if (rising_edge(CP)) then
			if (SR='0') then
				temp_output <= "0000"; --synchronous reset.
			else
				if (PE = '1' and CET = '1' and CEP = '1') then
					temp_output <= std_logic_vector(unsigned(temp_output) + "0001");
				elsif (PE = '0') then 
					temp_output <= P;
				end if; --if PE = 1
				if (temp_output) = "1110" then 
					TC <= '1';
				else
					TC <= '0';
				end if; --if temp_output=1110
			end if; --if SR=0
		end if; --rising_edge
	--Q <= temp_output;
	end process;
	Q <= temp_output;
end count;