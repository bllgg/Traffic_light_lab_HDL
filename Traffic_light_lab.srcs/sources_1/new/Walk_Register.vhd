----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 07:39:20 PM
-- Design Name: 
-- Module Name: Walk_Register - Behavioral
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

entity Walk_Register is
    Port ( wr_sync : in STD_LOGIC;
           wr_reset : in STD_LOGIC;
           wr : out STD_LOGIC);
end Walk_Register;

architecture Behavioral of Walk_Register is

begin
    process (wr_sync, wr_reset)
        begin
            if( wr_reset = '1' ) then
                wr <= '0';
            elsif( wr_sync 'event and wr_sync = '1' ) then
                wr <= '1';
            end if;
        end process;
end Behavioral;
