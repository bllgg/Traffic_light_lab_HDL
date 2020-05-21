----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2020 09:49:16 PM
-- Design Name: 
-- Module Name: FSM_tb - Behavioral
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

entity FSM_tb is
--  Port ( );
end FSM_tb;

architecture Behavioral of FSM_tb is

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

signal s_sensor_sync : STD_LOGIC;
signal s_wr : STD_LOGIC;
signal s_prog_sync : STD_LOGIC;
signal s_rst : STD_LOGIC;
signal s_clk : STD_LOGIC := '0';
signal s_expired : STD_LOGIC;
signal s_wr_reset : STD_LOGIC;
signal s_interval : STD_LOGIC_VECTOR (1 downto 0);
signal s_start_timer : STD_LOGIC;
signal s_leds : STD_LOGIC_VECTOR (6 downto 0);

begin
uut_1 : FSM 
    port map ( sensor_sync => s_sensor_sync,
               wr => s_wr,
               prog_sync => s_prog_sync,
               rst => s_rst,
               clk => s_clk,
               expired => s_expired,
               wr_reset => s_wr_reset,
               interval => s_interval,
               start_timer => s_start_timer,
               leds => s_leds );

--s_clk <= not s_clk after 5ns;
stimuli : process
    begin
        s_sensor_sync <= '0';
        s_wr <= '0';
        s_prog_sync <= '0';
        s_rst <= '0';
        s_expired <= '0';
        s_clk <= '0';
        wait for 5ns;
        s_rst <= '1';
        s_clk <= not s_clk;
        wait for 5 ns;
        s_rst <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '1';
        s_clk <= not s_clk;
        wait for 5ns;
        s_expired <= '0';
        s_clk <= not s_clk;
        wait;
    end process;

end Behavioral;
