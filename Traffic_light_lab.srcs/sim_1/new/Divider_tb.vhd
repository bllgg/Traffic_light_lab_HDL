----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2020 09:27:28 AM
-- Design Name: 
-- Module Name: Divider_tb - Behavioral
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

entity Divider_tb is
--  Port ( );
end Divider_tb;

architecture Behavioral of Divider_tb is

component divider is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           oneHz_enable : out STD_LOGIC);
end component;

signal s_rst : STD_LOGIC := '0';
signal s_clk : STD_LOGIC := '0';
signal s_oneHz_enable : STD_LOGIC := '0';

begin

uut_1 : divider
    port map ( rst => s_rst,
               clk => s_clk,
               oneHz_enable => s_oneHz_enable);
    stimuli : process
    begin
    s_clk <= '0';
    s_rst <= '0';
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_rst <= '1';
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_rst <= '0';
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait for 10ns;
    s_clk <= not s_clk;
    wait;
    end process;
--s_clk <= not s_clk after 1ns;

end Behavioral;
