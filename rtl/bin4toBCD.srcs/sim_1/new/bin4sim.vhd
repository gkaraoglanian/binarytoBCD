----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2022 02:53:19
-- Design Name: 
-- Module Name: bin4sim - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bin4sim is
--  Port ( );
end bin4sim;

architecture Behavioral of bin4sim is

    component bin4toBCD
        port ( A : in unsigned (3 downto 0);
               SEL : in std_logic;
               RES : out unsigned (3 downto 0) );
    end component;
    
    signal A_tb : unsigned(3 downto 0) := "0000";
    signal SEL_tb : std_logic := '0';
    signal RES_tb : unsigned (3 downto 0);
    
begin
    duv: bin4toBCD
    port map ( A => A_tb,
               SEL => SEL_tb,
               RES => RES_tb );
    
    tb_process : process
    begin
        A_tb <= "0000" ;SEL_tb <= '1';
        wait for 10ns;
        A_tb <= "0001" ;
        wait for 10ns;
        A_tb <= "0010" ;
        wait for 10ns;
        A_tb <= "0011" ;
        wait for 10ns;
        A_tb <= "0100" ;
        wait for 10ns;
        A_tb <= "0101" ;
        wait for 10ns;
        A_tb <= "0110" ;
        wait for 10ns;
        A_tb <= "0111" ;
        wait for 10ns;
        A_tb <= "1000" ;
        wait for 10ns;
        A_tb <= "1001" ;
        wait for 10ns;
        A_tb <= "1010" ;
        wait for 10ns;
        A_tb <= "1011" ;
        wait for 10ns;
        A_tb <= "1100" ;
        wait for 10ns;
        A_tb <= "1101" ;
        wait for 10ns;
        A_tb <= "1110" ;
        wait for 10ns;
        A_tb <= "1111" ;
        wait;
    end process;

end Behavioral;
