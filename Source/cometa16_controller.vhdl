-- ||***************************************************||
-- ||                                                   ||
-- ||   FEDERAL UNIVERSITY OF PIAUI                     ||
-- ||   NATURE SCIENCE CENTER                           ||
-- ||   COMPUTING DEPARTMENT                            ||
-- ||                                                   ||
-- ||   Computer for Every Task Architecture Mark II    ||
-- ||   COMETA MK II                                    ||
-- ||                                                   ||
-- ||   Developer: Icaro Gabryel                        ||
-- ||                                                   ||
-- ||***************************************************||

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.opcodes.all;

entity cometa16_controller is
    port(
        opcode:            in std_logic_vector(5 downto 0);

        ctrl_cj:           out std_logic_vector(2 downto 0);
        ctrl_ij:           out std_logic_vector(1 downto 0);

        ctrl_stk:          out std_logic_vector(1 downto 0);
        ctrl_lk:           out std_logic;
        ctrl_wr_rf:        out std_logic;
        ctrl_src_rf:       out std_logic;
    
        ctrl_wr_ac:        out std_logic;
        ctrl_src_ac:       out std_logic_vector(2 downto 0);
    
        ctrl_wr_hilo:      out std_logic;
        ctrl_src_hilo:     out std_logic_vector(1 downto 0);
    
        ctrl_sign_extend:  out std_logic_vector(1 downto 0);
    
        ctrl_src_alu_a:    out std_logic;
        ctrl_src_alu_b:    out std_logic_vector(1 downto 0);
        ctrl_alu:          out std_logic_vector(3 downto 0);
    
        ctrl_sh:           out std_logic_vector(1 downto 0);

        ctrl_wr_data_mem:  out std_logic;
        ctrl_data_mem_use: out std_logic

    );

end cometa16_controller;

architecture behavior_controller of cometa16_controller is

begin
    process(opcode) begin
        case opcode is
            when nope_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '0';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0000";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';
            
            when add_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0010";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when sub_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0101";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when not_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0010";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when and_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0110";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when or_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0111";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when xor_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "1000";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when nand_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "1000";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when nor_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "1010";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when xnor_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "1011";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when sll_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0000";
        
            ctrl_sh           <= "01";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when srl_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0000";
        
            ctrl_sh           <= "10";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when sra_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0000";
        
            ctrl_sh           <= "11";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            when mfac_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '1';
            ctrl_src_rf       <= '1';
        
            ctrl_wr_ac        <= '0';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0000";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            -- Immediate Operations
            when lsi_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "11";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "01";
            ctrl_alu          <= "0001";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '0';

            -- Memory Access Operations
            when lwr_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '1';
            ctrl_src_ac       <= "001";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0000";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '0';
            ctrl_data_mem_use <= '1';

            when swr_opcode =>

            ctrl_cj          <= "000";
            ctrl_ij          <= "00";

            ctrl_stk          <= "00";
            ctrl_lk           <= '0';
            ctrl_wr_rf        <= '0';
            ctrl_src_rf       <= '0';
        
            ctrl_wr_ac        <= '0';
            ctrl_src_ac       <= "000";
        
            ctrl_wr_hilo      <= '0';
            ctrl_src_hilo     <= "00";
        
            ctrl_sign_extend  <= "00";
        
            ctrl_src_alu_a    <= '0';
            ctrl_src_alu_b    <= "00";
            ctrl_alu          <= "0000";
        
            ctrl_sh           <= "00";

            ctrl_wr_data_mem  <= '1';
            ctrl_data_mem_use <= '1';

            when others =>

            ctrl_cj          <= "XXX";
            ctrl_ij          <= "XX";

            ctrl_stk          <= "XX";
            ctrl_lk           <= 'X';
            ctrl_wr_rf        <= 'X';
            ctrl_src_rf       <= 'X';
        
            ctrl_wr_ac        <= 'X';
            ctrl_src_ac       <= "XXX";
        
            ctrl_wr_hilo      <= 'X';
            ctrl_src_hilo     <= "XX";
        
            ctrl_sign_extend  <= "XX";
        
            ctrl_src_alu_a    <= 'X';
            ctrl_src_alu_b    <= "XX";
            ctrl_alu          <= "XXXX";
        
            ctrl_sh           <= "XX";

            ctrl_wr_data_mem  <= 'X';
            ctrl_data_mem_use <= 'X';

        end case;

    end process;

end behavior_controller;
