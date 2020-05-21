----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2020 07:51:49 PM
-- Design Name: 
-- Module Name: FSM - Behavioral
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

entity FSM is
    Port ( senser_sync : in STD_LOGIC;
           wr : in STD_LOGIC;
           expired : in STD_LOGIC;
           prog_sync : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           wr_reset : out STD_LOGIC;
           leds : out STD_LOGIC_VECTOR (6 downto 0);
           interval : out STD_LOGIC_VECTOR (2 downto 0);
           start_timer : out STD_LOGIC);
end FSM;

architecture Behavioral of FSM is

type state is (A,B,C,D,E);
signal s_led_state : state;
constant t_base : STD_LOGIC_VECTOR (1 downto 0) := "00";
constant t_ext : STD_LOGIC_VECTOR (1 downto 0) := "01";
constant t_yel : STD_LOGIC_VECTOR (1 downto 0) := "10";

begin
    
    process ( s_led_state )
            begin
                case s_led_state is
                    when A=>
                        leds <= "0011000";
                    when B=>
                        leds <= "0101000";
                    when C=>
                        leds <= "1000010";
                    when D=>
                        leds <= "1000100";
                    when E =>
                        leds <= "1001001";
                end case;
        end process;

end Behavioral;
