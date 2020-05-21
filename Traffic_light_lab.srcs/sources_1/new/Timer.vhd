----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 07:49:06 PM
-- Design Name: 
-- Module Name: Timer - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Timer is
    Port ( value : in STD_LOGIC_VECTOR (3 downto 0);
           oneHz_enable : in STD_LOGIC;
           start_timer : in STD_LOGIC;
           expired : out STD_LOGIC;
           rst : in STD_LOGIC);
end Timer;

architecture Behavioral of Timer is

begin
    process (start_timer, oneHz_enable, rst, value)
        variable expire_flag : integer := 0;
        variable time_left : integer := 0;
        variable timer_started : integer := 0;
        begin
        if ( oneHz_enable 'event and oneHz_enable = '1') then
            if start_timer = '1' then
                timer_started := 1;
                time_left := to_integer(unsigned(value));
                expired <= '0';
            end if;
            if (expire_flag = 1) then
                    expired <= '0';
                    expire_flag := 0;
                    --time_left := to_integer(unsigned(value));
                    --timer_started := 0;
            end if;
            if ((time_left /= 0) and (timer_started = 1)) then
                time_left := time_left - 1;
            elsif ((time_left = 0) and (timer_started = 1)) then
                expired <= '1';
                expire_flag := 1;
                time_left := to_integer(unsigned(value))-1;
            end if;
            if rst = '1' then
                time_left := to_integer(unsigned(value))-1;
            end if;
        end if;
    end process;
end Behavioral;
