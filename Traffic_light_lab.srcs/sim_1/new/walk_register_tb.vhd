----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 09:48:10 PM
-- Design Name: 
-- Module Name: walk_register_tb - Behavioral
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

entity walk_register_tb is
--  Port ( );
end walk_register_tb;

architecture Behavioral of walk_register_tb is

component walk_register is
    Port ( wr_sync : in STD_LOGIC;
           wr_reset : in STD_LOGIC;
           wr : out STD_LOGIC);
end component;

signal s_wr_sync : STD_LOGIC;
signal s_wr_reset : STD_LOGIC;
signal s_wr : STD_LOGIC;

begin
uut_1 : walk_register
    port map (wr_sync => s_wr_sync,
              wr_reset => s_wr_reset,
              wr => s_wr);

stimuli : process
    begin
        s_wr_reset <= '1';
        s_wr_sync <= '0';
        wait for 20ns;
        s_wr_reset <= '0';
        wait for 20ns;
        s_wr_sync <= '1';
        wait for 20ns;
        s_wr_sync <= '0';
        wait for 20ns;
        s_wr_reset <= '1';
        wait for 20ns;
        s_wr_reset <= '0';
        wait for 20ns;
        s_wr_reset <= '1';
        s_wr_sync <= '1';
        wait;
    end process;

end Behavioral;
