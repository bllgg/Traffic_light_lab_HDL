----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 10:23:13 PM
-- Design Name: 
-- Module Name: Synchronizer_tb - Behavioral
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

entity Synchronizer_tb is
--  Port ( );
end Synchronizer_tb;

architecture Behavioral of Synchronizer_tb is
component Synchronizer is
    Port ( reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           walk_request : in STD_LOGIC;
           reprogram : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset_sync : out STD_LOGIC;
           sensor_sync : out STD_LOGIC;
           wr_sync : out STD_LOGIC;
           prog_sync : out STD_LOGIC);
end component;

signal s_reset : STD_LOGIC;
signal s_sensor : STD_LOGIC;
signal s_walk_request : STD_LOGIC;
signal s_reprogram : STD_LOGIC;
signal s_clk : STD_LOGIC;
signal s_reset_sync : STD_LOGIC;
signal s_sensor_sync : STD_LOGIC;
signal s_wr_sync : STD_LOGIC;
signal s_prog_sync : STD_LOGIC;

begin
    uut_1 : synchronizer
    port map (reset => s_reset,
              sensor => s_sensor,
              walk_request => s_walk_request,
              reprogram => s_reprogram,
              clk => s_clk,
              reset_sync => s_reset_sync,
              sensor_sync => s_sensor_sync,
              wr_sync => s_wr_sync,
              prog_sync => s_prog_sync);
    stimuli : process
    begin
        s_clk <= '0';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '1';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '0';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '1';
        s_reset <= '1';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '0';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '1';
        s_reset <= '0';
        s_sensor <= '1';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '0';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '1';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '1';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '0';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait for 50ns;
        s_clk <= '1';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '1';
        wait for 50ns;
        s_clk <= '0';
        s_reset <= '0';
        s_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        wait;
    end process;
    
end Behavioral;
