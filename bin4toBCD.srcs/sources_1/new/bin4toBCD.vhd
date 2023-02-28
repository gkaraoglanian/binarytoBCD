----------------------------------------------------------------------------------
-- Company: University of Piraeus
-- Engineer: GRIGORIS KARAOGLANIAN - P16044
-- 
-- Create Date: 04.05.2022 23:31:43
-- Design Name: 
-- Module Name: bin4toBCD - Behavioral
-- Project Name: EXERCISE 1
-- Target Devices: Zybo-Z7-Master.xdc
-- Tool Versions: 
-- Description: 
-- Design a circuit that converts a 4-bit binary input 
-- into a Binary Coded Decimal (BCD) representation.
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Input A (4-bits) via 4 slide switches.
-- Output HI & LO via 4 LEDS (each).
-- Output will be multiplexed via a push button
-- that will select between HI or LO.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bin4toBCD is
  Port (A : in unsigned(3 downto 0);
        SEL : in std_logic;
        RES : out unsigned(3 downto 0)
         );
end bin4toBCD;

architecture Behavioral of bin4toBCD is
    signal HI,LO : unsigned(3 downto 0);
begin
    HI <= "0001" when A > 9 else "0000"; 
    LO <= A + 6 when A > 9 else A;
    with SEL select
        RES <= HI when '1',
               LO when '0',
               A when others;

end Behavioral;
