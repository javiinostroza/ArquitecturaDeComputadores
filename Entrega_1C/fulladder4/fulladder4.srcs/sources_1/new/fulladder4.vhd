----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2019 19:12:17
-- Design Name: 
-- Module Name: fulladder4 - Behavioral
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

entity fulladder4 is

    Port ( sw : in STD_LOGIC_VECTOR (8 downto 0);
           led : out STD_LOGIC_VECTOR (4 downto 0);
           clk : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
           
end fulladder4;

architecture Behavioral of fulladder4 is

component Display_Controller is
    Port (
        dis_a       : in   STD_LOGIC_VECTOR (3 downto 0);
        dis_b       : in   STD_LOGIC_VECTOR (3 downto 0);
        dis_c       : in   STD_LOGIC_VECTOR (3 downto 0);
        dis_d       : in   STD_LOGIC_VECTOR (3 downto 0);
        clk         : in   STD_LOGIC;
        seg         : out  STD_LOGIC_VECTOR (6 downto 0);
        an          : out  STD_LOGIC_VECTOR (3 downto 0)
        );
end component;

component Decimal_BCD is

    Port(
        n       : in  STD_LOGIC_VECTOR (4 downto 0);
        dec : out STD_LOGIC_VECTOR (3 downto 0);
        unit    : out STD_LOGIC_VECTOR (3 downto 0)
        );
end component;

signal carry_0 : std_logic;
signal carry_1 : std_logic;
signal carry_2 : std_logic;
signal carry_3 : std_logic;
signal unidad : std_logic_vector (3 downto 0);
signal decena : std_logic_vector (3 downto 0);

begin

carry_0 <= sw(8);
led(0) <= (sw(0) xor sw(4)) xor carry_0;

carry_1 <= (sw(0) and sw(4)) or ((sw(0) xor sw(4)) and carry_0);
led(1) <= (sw(1) xor sw(5)) xor carry_1;

carry_2 <= (sw(1) and sw(5)) or ((sw(1) xor sw(5)) and carry_1);
led(2) <= (sw(2) xor sw(6)) xor carry_2;

carry_3 <= (sw(2) and sw(6)) or ((sw(2) xor sw(6)) and carry_2);
led(3) <= (sw(3) xor sw(7)) xor carry_3;

led(4) <= (sw(3) and sw(7)) or ((sw(3) xor sw(7)) and carry_3);

convert_decimal: Decimal_BCD port map(

    n(0) => (sw(0) xor sw(4)) xor carry_0,
    n(1) => (sw(1) xor sw(5)) xor carry_1,
    n(2) => (sw(2) xor sw(6)) xor carry_2,
    n(3) => (sw(3) xor sw(7)) xor carry_3,
    n(4) => (sw(3) and sw(7)) or ((sw(3) xor sw(7)) and carry_3), 
    dec(3 downto 0) => decena,
    unit(3 downto 0) => unidad);

display: Display_Controller port map(
    clk => clk,
    dis_a(0) => sw(0) and not sw(0),
    dis_a(1) => sw(0) and not sw(0),
    dis_a(2) => sw(0) and not sw(0),
    dis_a(3) => sw(0) and not sw(0),
    dis_b(0) => sw(0) and not sw(0),
    dis_b(1) => sw(0) and not sw(0),
    dis_b(2) => sw(0) and not sw(0),
    dis_b(3) => sw(0) and not sw(0),
    dis_c(3 downto 0) => decena,
    dis_d(3 downto 0) => unidad,
    seg => seg (6 downto 0),
    an => an);

end Behavioral;
