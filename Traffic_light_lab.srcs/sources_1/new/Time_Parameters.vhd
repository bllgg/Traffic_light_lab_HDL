----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 07:45:18 PM
-- Design Name: 
-- Module Name: Time_Parameters - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Time_Parameters is
    Port ( selector : in STD_LOGIC_VECTOR (1 downto 0);
           time_value : in STD_LOGIC_VECTOR (3 downto 0);
           prog_sync : in STD_LOGIC;
           interval : in STD_LOGIC_VECTOR (1 downto 0);
           clk : in STD_LOGIC;
           value : out STD_LOGIC_VECTOR (3 downto 0);
           rst : in STD_LOGIC);
end Time_Parameters;

architecture Behavioral of Time_Parameters is

signal t_base_2: STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal t_base: STD_LOGIC_VECTOR (3 downto 0) := "0110";
signal t_ext: STD_LOGIC_VECTOR (3 downto 0) := "0011";
signal t_yel: STD_LOGIC_VECTOR (3 downto 0) := "0010";

begin
    process (clk, rst, prog_sync)
        --variable t_base : string := "0110";
        --variable t_ext : string := "0011";
        --variable t_yel : string := "0010";
        begin
            if ( clk 'event and clk = '1' ) then
                if rst = '1' then
                    t_base <= "0110";
                    t_ext <= "0011";
                    t_yel <= "0010";
                elsif prog_sync = '1' then
                    if selector = "00" then
                        t_base <= time_value;
                    elsif selector = "01" then
                        t_ext <= time_value;
                    elsif selector = "10" then
                        t_yel <= time_value;
                    end if;
                end if;
            end if;
        end process;
        
    process ( clk, interval )
        begin
            if ( clk 'event and clk = '1' ) then
                if interval = "00" then
                    value <= t_base;
                elsif interval = "01" then
                    value <= t_ext;
                elsif interval = "10" then
                    value <= t_yel;
                elsif interval = "11" then
                    value <= t_base;
                else
                    value <= std_logic_vector(unsigned(t_base) sll 1);
                    --something wrong here
                end if;
            end if;
        end process;
end Behavioral;
