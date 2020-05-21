----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2020 10:43:18 PM
-- Design Name: 
-- Module Name: TrafficControllerMain_tb - Behavioral
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

entity TrafficControllerMain_tb is
--  Port ( );
end TrafficControllerMain_tb;

architecture Behavioral of TrafficControllerMain_tb is

component traffic_controller is
    Port ( reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           walk_request : in STD_LOGIC;
           reprogram : in STD_LOGIC;
           clock : in STD_LOGIC;
           time_parameter_selector : in STD_LOGIC_VECTOR (1 downto 0);
           time_value : in STD_LOGIC_VECTOR (3 downto 0);
           leds : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal s_reset : STD_LOGIC;
signal s_sensor : STD_LOGIC;
signal s_walk_request : STD_LOGIC;
signal s_reprogram : STD_LOGIC;
signal s_time_parameter_selector : STD_LOGIC_VECTOR (1 downto 0);
signal s_time_value : STD_LOGIC_VECTOR (3 downto 0);
signal s_clock : STD_LOGIC := '0';
signal s_leds : STD_LOGIC_VECTOR (6 downto 0);

begin
uut_1 : traffic_controller
    port map ( reset => s_reset,
               sensor => s_sensor,
               walk_request => s_walk_request,
               reprogram => s_reprogram,
               time_parameter_selector => s_time_parameter_selector,
               time_value => s_time_value,
               clock => s_clock,
               leds => s_leds);

stimuli : process
    begin
        s_reset <= '0';
        S_sensor <= '0';
        s_walk_request <= '0';
        s_reprogram <= '0';
        s_time_parameter_selector <= "00";
        s_time_value <= "0000";
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        s_reset <= '1';
        wait for 10ns;
        s_clock <= '0';
        s_reset <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait for 10ns;
        s_clock <= '1';
        wait for 10ns;
        s_clock <= '0';
        wait;
    end process;
end Behavioral;
