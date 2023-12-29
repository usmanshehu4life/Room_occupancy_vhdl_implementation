

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

 

entity room_occupancy is

    Port ( clk : in STD_LOGIC;

           reset : in STD_LOGIC;

           entrance_sensor : in STD_LOGIC;

           exit_sensor : in STD_LOGIC;

           max_occupancy : in UNSIGNED(5 downto 0);

           red_indicator : out STD_LOGIC);

end room_occupancy;

 

architecture code_arch of room_occupancy is

    signal X, Y, Z,max_count,min_count : STD_LOGIC := '0';

    signal occupancy_count : INTEGER range 0 to 63 := 0;

    signal max_occupancy_integer : INTEGER range 0 to 63 := 0;

 

begin
	

    process(clk, reset)	
    begin
	max_occupancy_integer <= to_integer(max_occupancy);-- input load
        if reset = '1' then

            -- Reset the system

            X <= '0';

            Y <= '0';

            Z <= '0';
            occupancy_count <= 0;

            max_occupancy_integer <= 0;

        elsif (clk'event and clk = '1') then

            




            if entrance_sensor = '1' and  occupancy_count < max_occupancy_integer then   --Sensor for the entrance
                X <= '1';
		occupancy_count <= occupancy_count + 1;
		max_count <= '0';
		--if occupancy_count >= max_occupancy_integer then  --		if occupancy_count >= max_occupancy then
		else
		max_count <= '1';
		X <= '0';
            end if;

 

            if exit_sensor = '1' then  --Sensor for the exit
                Y <= '1';
							 --          occupancy_count <= occupancy_count - 1;
		if occupancy_count = 0 then
			min_count <= '1';
		else 
		min_count <='0';
			occupancy_count <= occupancy_count - 1;
		end if;
            else
                Y <= '0';
            end if;



        end if;

    end process;
    
    Z <= '1' when max_count = 1 else
	 '0';
	
    red_indicator <= Z; --red led light for max occupancy
end code_arch; 
