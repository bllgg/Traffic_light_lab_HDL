----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2020 01:59:00 PM
-- Design Name: 
-- Module Name: Timer_tb - Behavioral
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

entity Timer_tb is
--  Port ( );
end Timer_tb;

architecture Behavioral of Timer_tb is
component timer is
    Port ( value : in STD_LOGIC_VECTOR (3 downto 0);
           start_timer : in STD_LOGIC;
           oneHz_enable : in STD_LOGIC;
           rst : in STD_LOGIC;
           expired : out STD_LOGIC);
    end component;
    
signal s_value : STD_LOGIC_VECTOR (3 downto 0);
signal s_start_timer : STD_LOGIC;
signal s_oneHz_enable : STD_LOGIC := '0';
signal s_rst : STD_LOGIC;
signal s_expired : STD_LOGIC;

begin
uut_1 : timer
    port map ( value => s_value,
               start_timer => s_start_timer,
               oneHz_enable => s_oneHz_enable,
               rst => s_rst,
               expired => s_expired );
stimuli : process
    begin
        s_oneHz_enable <= '0';
        s_value <= "0011";
        s_start_timer <= '0';
        s_rst <= '0';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        s_start_timer <= '1';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        s_start_timer <= '0';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        --s_rst <= '1';
        --s_value <= "0110";
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        --s_rst <= '0';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        --s_start_timer <= '1';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        --s_start_timer <= '0';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        s_value <= "0110";
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        s_rst <= '1';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        s_rst <= '0';
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait for 10ns;
        s_oneHz_enable <= not s_oneHz_enable;
        wait;
    end process;
end Behavioral;
