----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2020 11:37:21 AM
-- Design Name: 
-- Module Name: Time_parameters_tb - Behavioral
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

entity Time_parameters_tb is
--  Port ( );
end Time_parameters_tb;

architecture Behavioral of Time_parameters_tb is

component time_parameters is
    Port ( rst : in STD_LOGIC;
           prog_sync : in STD_LOGIC;
           selector : in STD_LOGIC_VECTOR (1 downto 0);
           time_value : in STD_LOGIC_VECTOR (3 downto 0);
           interval : in STD_LOGIC_VECTOR (1 downto 0);
           value : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end component;

signal s_rst : STD_LOGIC;
signal s_prog_sync : STD_LOGIC;
signal s_selector : STD_LOGIC_VECTOR (1 downto 0);
signal s_time_value : STD_LOGIC_VECTOR (3 downto 0);
signal s_interval : STD_LOGIC_VECTOR (1 downto 0);
signal s_value : STD_LOGIC_VECTOR (3 downto 0);
signal s_clk : STD_LOGIC;

begin
    uut_1 : time_parameters
    port map ( rst => s_rst,
               prog_sync => s_prog_sync,
               selector => s_selector,
               time_value => s_time_value,
               interval => s_interval,
               value => s_value,
               clk => s_clk);

    stimuli : process
    begin
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "01";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "01";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "10";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "10";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "11";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
--        clock <= '1';
--        reset_sync <= '0';
--        prog_sync <= '1';
--        para_selector <= "00";
--        time_value <= "1000";
--        interval <= "01";
        wait for 10 ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '1';
        s_selector <= "00";
        s_time_value <= "0001";
        s_interval <= "00";
        wait for 10ns;
--        clock <= '0';
--        reset_sync <= '0';
--        prog_sync <= '0';
--        para_selector <= "00";
--        time_value <= "0000";
--        interval <= "00";
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
--        clock <= '1';
--        reset_sync <= '0';
--        prog_sync <= '0';
--        para_selector <= "00";
--        time_value <= "0000";
--        interval <= "00";
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '1';
        s_selector <= "01";
        s_time_value <= "0010";
        s_interval <= "00";
        wait for 10ns;
--        clock <= '0';
--        reset_sync <= '0';
--        prog_sync <= '0';
--        para_selector <= "00";
--        time_value <= "0000";
--        interval <= "01";
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
--        clock <= '1';
--        reset_sync <= '1';
--        prog_sync <= '0';
--        para_selector <= "00";
--        time_value <= "0000";
--        interval <= "00";
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '1';
        s_selector <= "10";
        s_time_value <= "0100";
        s_interval <= "00";
        wait for 10ns;
--        clock <= '0';
--        reset_sync <= '0';
--        prog_sync <= '0';
--        para_selector <= "00";
--        time_value <= "0000";
--        interval <= "00";
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
--        clock <= '1';
--        reset_sync <= '0';
--        prog_sync <= '0';
--        para_selector <= "00";
--        time_value <= "0000";
--        interval <= "00";
        ------------------------------------------------------------------------------------
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "01";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "01";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "10";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "10";
        ------------------------------------------------------------------------------------
        wait for 10 ns;    
        s_clk <= '1';
        s_rst <= '1';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10 ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        -----------------------------------------------------------------------------------
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "00";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "01";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "01";
        wait for 10ns;
        s_clk <= '1';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "10";
        wait for 10ns;
        s_clk <= '0';
        s_rst <= '0';
        s_prog_sync <= '0';
        s_selector <= "00";
        s_time_value <= "0000";
        s_interval <= "10";
        -----------------------------------------------------------------------------------
        wait;
    end process;
end Behavioral;
