----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 07:38:03 PM
-- Design Name: 
-- Module Name: Synchronizer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Synchronizer is
    Port ( reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           walk_request : in STD_LOGIC;
           reprogram : in STD_LOGIC;
           clk : in STD_LOGIC;
           prog_sync : out STD_LOGIC;
           wr_sync : out STD_LOGIC;
           sensor_sync : out STD_LOGIC;
           reset_sync : out STD_LOGIC);
end Synchronizer;

architecture Behavioral of Synchronizer is

begin
    process (clk) 
        begin
            if ( clk 'event and clk= '1' ) then
                reset_sync <= reset;
                sensor_sync <= sensor;
                wr_sync <= walk_request;
                prog_sync <= reprogram;
            end if;
        end process;

end Behavioral;
