----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2020 10:22:11 PM
-- Design Name: 
-- Module Name: TrafficControllerMain - Behavioral
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

entity TrafficControllerMain is
    Port ( reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           walk_request : in STD_LOGIC;
           reprogram : in STD_LOGIC;
           clock : in STD_LOGIC;
           time_parameter_selector : in STD_LOGIC_VECTOR (1 downto 0);
           time_value : in STD_LOGIC_VECTOR (3 downto 0);
           leds : out STD_LOGIC_VECTOR (6 downto 0));
end TrafficControllerMain;

architecture Behavioral of TrafficControllerMain is

component FSM is
    Port ( sensor_sync : in STD_LOGIC;
           wr : in STD_LOGIC;
           prog_sync : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           expired : in STD_LOGIC;
           wr_reset : out STD_LOGIC;
           interval : out STD_LOGIC_VECTOR (1 downto 0);
           start_timer : out STD_LOGIC;
           leds : out STD_LOGIC_VECTOR (6 downto 0));
end component;

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

component divider is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           oneHz_enable : out STD_LOGIC);
end component;

component time_parameters is
    Port ( rst : in STD_LOGIC;
           prog_sync : in STD_LOGIC;
           selector : in STD_LOGIC_VECTOR (1 downto 0);
           time_value : in STD_LOGIC_VECTOR (3 downto 0);
           interval : in STD_LOGIC_VECTOR (1 downto 0);
           value : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end component;

component timer is
    Port ( value : in STD_LOGIC_VECTOR (3 downto 0);
           start_timer : in STD_LOGIC;
           oneHz_enable : in STD_LOGIC;
           rst : in STD_LOGIC;
           expired : out STD_LOGIC);
end component;

component walk_register is
    Port ( wr_sync : in STD_LOGIC;
           wr_reset : in STD_LOGIC;
           wr : out STD_LOGIC);
end component;

signal s_reset_sync : STD_LOGIC;
signal s_sensor_sync : STD_LOGIC;
signal s_wr_sync : STD_LOGIC;
signal s_prog_sync : STD_LOGIC;
signal s_start_timer : STD_LOGIC;
signal s_interval : STD_LOGIC_VECTOR ( 1 downto 0 );
signal s_value : STD_LOGIC_VECTOR ( 3 downto 0 );
signal s_wr_reset : STD_LOGIC;
signal s_wr : STD_LOGIC;
signal s_exp : STD_LOGIC;
signal s_oneHz_enable : STD_LOGIC;

begin
fsm_module : FSM 
    port map ( sensor_sync => s_sensor_sync,
               wr => s_wr,
               prog_sync => s_prog_sync,
               rst => s_reset_sync,
               clk => clock,
               expired => s_exp,
               wr_reset => s_wr_reset,
               interval => s_interval,
               start_timer => s_start_timer,
               leds => leds );

synchronizer_module : synchronizer
    port map (reset => reset,
              sensor => sensor,
              walk_request => walk_request,
              reprogram => reprogram,
              clk =>clock,
              reset_sync => s_reset_sync,
              sensor_sync => s_sensor_sync,
              wr_sync => s_wr_sync,
              prog_sync => s_prog_sync);
              
divider_module : divider
    port map ( rst => reset,
               clk => clock,
               oneHz_enable => s_oneHz_enable);

time_parameter_module : time_parameters
    port map ( rst => s_reset_sync,
               prog_sync => s_prog_sync,
               selector => time_parameter_selector,
               time_value => time_value,
               interval => s_interval,
               value => s_value,
               clk => clock);

timer_module : timer
    port map ( value => s_value,
               start_timer => s_start_timer,
               oneHz_enable => s_oneHz_enable,
               rst => s_reset_sync,
               expired => s_exp );

walk_register_module : walk_register
    port map (wr_sync => s_wr_sync,
              wr_reset => s_wr_reset,
              wr => s_wr);

end Behavioral;
