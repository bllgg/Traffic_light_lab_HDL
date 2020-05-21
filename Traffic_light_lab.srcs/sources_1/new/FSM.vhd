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
    Port ( sensor_sync : in STD_LOGIC;
           wr : in STD_LOGIC;
           expired : in STD_LOGIC;
           prog_sync : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           wr_reset : out STD_LOGIC;
           leds : out STD_LOGIC_VECTOR (6 downto 0);
           interval : out STD_LOGIC_VECTOR (1 downto 0);
           start_timer : out STD_LOGIC);
end FSM;

architecture Behavioral of FSM is

type state is (A,B,C,D,E);
signal s_led_state : state;
constant t_base : STD_LOGIC_VECTOR (1 downto 0) := "00";
constant t_ext : STD_LOGIC_VECTOR (1 downto 0) := "01";
constant t_yel : STD_LOGIC_VECTOR (1 downto 0) := "10";

begin
    process (clk, wr, sensor_sync, prog_sync, rst, expired)
        variable ext_time : STD_LOGIC := '0';
        begin
            if ( clk 'event and clk = '1' ) then
                start_timer <= '0';
                if ( prog_sync = '1' or rst = '1' ) then
                    s_led_state <= A;
                    interval <= t_base;
                    wr_reset <= '0';
                    start_timer <= '1';
                    ext_time := '0';
                elsif expired = '1' then
                    case s_led_state is
                        when A =>
                            if ( ext_time = '0' and sensor_sync = '0' ) then
                                interval <= t_base;
                                ext_time := '1';
                                start_timer <= '1';
                            elsif ( ext_time = '0' and sensor_sync = '1' ) then
                                interval <= t_ext;
                                start_timer <= '1';
                                ext_time := '1';
                            else
                                s_led_state <= B;
                                interval <= t_yel;
                                start_timer <= '1';
                                ext_time := '0';
                            end if;
                        when B =>
                            if wr = '1' then
                                s_led_state <= E;
                                interval <= t_ext;
                                start_timer <= '1';
                            else
                                s_led_state <= C;
                                interval <= t_base;
                                start_timer <= '1';
                            end if;
                        when C =>
                            wr_reset <= '0';
                            if ( ext_time = '0' and sensor_sync = '1' ) then
                                interval <= t_ext;
                                start_timer <= '1';
                                ext_time := '1';
                            else
                                s_led_state <= D;
                                interval <= t_yel;
                                start_timer <= '1';
                                ext_time := '0';
                            end if;
                        when D =>
                            s_led_state <= A;
                            interval <= t_base;
                            start_timer <= '1';
                            ext_time := '0';
                        when E =>
                            s_led_state <= C;
                            interval <= t_yel;
                            start_timer <= '1';
                            wr_reset <= '1';
                        when others =>
                            s_led_state <= A;
                            interval <= t_base;
                            start_timer <= '1';
                            wr_reset <= '0';
                            ext_time := '0';
                    end case;
                end if;
            end if;
        end process;
    
    
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
