library ieee;
use ieee.std_logic_1164.all;

entity tan is 
    port(
		clock : std_logic; 
		reset : std_logic;
        sudut : in std_logic_vector(8 downto 0);
        output : out std_logic_vector(26 downto 0)
    );
end tan; 

architecture tan_arc of tan is 
signal internal_sudut : std_logic_vector (8 downto 0); 

begin
    process (sudut,clock, reset)
    begin 
    if (reset = '1') then 
        internal_sudut <= "000000000"; 
        output <= "000000000000000000000000000";
	elsif (clock'event and clock = '0') then 
        internal_sudut <= sudut;
        case sudut is 
            when "000000000" => output <= "000000000000000000000000000"; --0
            when "000000001" => output <= "000000000000100011101111111"; --1 
            when "000000010" => output <= "000000000001000111100001001"; --2
            when "000000011" => output <= "000000000001101011010101010"; --3
            when "000000100" => output <= "000000000010001111001101100"; --4
            when "000000101" => output <= "000000000010110011001011011"; --5
            when "000000110" => output <= "000000000011010111010000010"; --6
            when "000000111" => output <= "000000000011111011011101101"; --7 
            when "000001000" => output <= "000000000100011111110101000"; --8
            when "000001001" => output <= "000000000101000100010111110"; --9
            when "000001010" => output <= "000000000101101001000111100"; --10
            when "000001011" => output <= "000000000101101001000111100"; --11
            when "000001100" => output <= "000000000110110011001100110"; --12
            when "000001101" => output <= "000000000111011000110100011"; --13
            when "000001110" => output <= "000000000111111110100111111"; --14
            when "000001111" => output <= "000000001000100100110000101"; --15
            when "000010000" => output <= "000000001001001011010000010"; --16
            when "000010001" => output <= "000000001001110010001000110"; --17
            when "000010010" => output <= "000000001010011001011011111"; --18
            when "000010011" => output <= "000000001011000001001011110"; --19
            when "000010100" => output <= "000000001011101001011010010"; --20
            when "000010101" => output <= "000000001100010010001001111"; --21
            when "000010110" => output <= "000000001100111011011100100"; --22
            when "000010111" => output <= "000000001101100101010100110"; --23
            when "000011000" => output <= "000000001110001111110101000";--24
            when "000011001" => output <= "000000001110111010111111111"; --25
            when "000011010" => output <= "000000001111100110111000001";--26
            when "000011011" => output <= "000000010000010011100000100"; --27
            when "000011100" => output <= "000000010001000000111100010"; --28
            when "000011101" => output <= "000000010001101111001110011"; --29
            when "000011110" => output <= "000000010010011110011010100"; --30
            when "000011111" => output <= "000000010011001110100100000";--31
            when "000100000" => output <= "000000010011111111101110111";--32
            when "000100001" => output <= "000000010100110001111111001";--33
            when "000100010" => output <= "000000010101100101011001001";--34
            when "000100011" => output <= "000000010110011010000001101";--35
            when "000100100" => output <= "000000010111001111111101011";--36
            when "000100101" => output <= "000000011000000111010001111";--37
            when "000100110" => output <= "000000011001000000000100101";--38 
            when "000100111" => output <= "000000011001111010011100000";--39
            when "000101000" => output <= "000000011010110110011110100";--40
            when "000101001" => output <= "000000011011110100010011001";--41 
            when "000101010" => output <= "000000011100110100000001110";--42
            when "000101011" => output <= "000000011101110101110010101";--43 
            when "000101100" => output <= "000000011110111001101110110";--44
            when "000101101" => output <= "000000100000000000000000000";--45
            when "000101110" => output <= "000000100001001000110001000";--46
            when "000101111" => output <= "000000100010010100001101100";--47
            when "000110000" => output <= "000000100011100010100010010";--48
            when "000110001" => output <= "000000100100110011111101001";--49
            when "000110010" => output <= "000000100110001000101101100";--50
            when "000110011" => output <= "000000100111100001000100100";--51
            when "000110100" => output <= "000000101000111101010100100";--52
            when "000110101" => output <= "000000101010011101110010011";--53 
            when "000110110" => output <= "000000101100000010110101001";--54 
            when "000110111" => output <= "000000101101101100110110010";--55
            when "000111000" => output <= "000000101111011100010010010";--56
            when "000111001" => output <= "000000110001010001101001001";--57
            when "000111010" => output <= "000000110011001101011111000";--58 
            when "000111011" => output <= "000000110101010000011100100";--59
            when "000111100" => output <= "000000110111011011001111011";--60 
            when "000111101" => output <= "000000111001101110101100001";--61
            when "000111110" => output <= "000000111100001011101110101";--62
            when "000111111" => output <= "000000111110110011011011010";--63
            when "001000000" => output <= "000001000001100111000001011";--64  
            when "001000001" => output <= "000001000100100111111100110";--65
            when "001000010" => output <= "000001000111110111111000100";--66
            when "001000011" => output <= "000001001011011000110010010";--67
            when "001000100" => output <= "000001001111001100111110101";--68
            when "001000101" => output <= "000001010011010111001110010";--69
            when "001000110" => output <= "000001010111111010110101011";--70
            when "001000111" => output <= "000001011100111011110100110";--71
            when "001001000" => output <= "000001100010011111000110001";--72 
            when "001001001" => output <= "000001101000101010101101010";--73
            when "001001010" => output <= "000001101111100110001110011";--74
            when "001001011" => output <= "000001110111011011001111011";--75
            when "001001100" => output <= "000010000000010110000101001";--76 
            when "001001101" => output <= "000010001010100110110111010";--77 
            when "001001110" => output <= "000010010110100011000101010";--78
            when "001001111" => output <= "000010100100101000000011000";--79
            when "001010000" => output <= "000010110101011110110010010";--80
            when "001010001" => output <= "000011001010000010100100000";--81
            when "001010010" => output <= "000011100011101100010001110";--82
            when "001010011" => output <= "000100000100100111100111110";--83
            when "001010100" => output <= "000100110000011101011010110";--84
            when "001010101" => output <= "000101101101110000101111111";--85 
            when "001010110" => output <= "000111001001100111110000111";--86
            when "001010111" => output <= "000111001001100111110000111";--87 
            when "001011000" => output <= "001110010100010111000011000";--88
            when "001011001" => output <= "011100101001010001110101111";--89 
            when "001011010" => output <= "000000000000000000000000000";--90
            when "001011011" => output <= "100011010110101110001010000";--91
            when "001011100" => output <= "110001101011101000111100000";--92 
            when "001011101" => output <= "110110011101011001110100000";--93 
            when "001011110" => output <= "111000110110011000001100000";--94  
            when "001011111" => output <= "111010010010001111010000000";--95 
            when "001100000" => output <= "111011001111100010100101001";--96 
            when "001100001" => output <= "111011111011011000011000001";--97 
            when "001100010" => output <= "111100011100010011101110001";--98 
            when "001100011" => output <= "111100110101111101011011111";--99 
            when "001100100" => output <= "111101001010100001001101101";--100 
            when "001100101" => output <= "111101011011010111111100111";--101 
            when "001100110" => output <= "111101101001011100111010101";--102 
            when "001100111" => output <= "111101110101011001001000101";--103 
            when "001101000" => output <= "111101111111101001111010110";--104 
            when "001101001" => output <= "111110001000100100110000100";--105 
            when "001101010" => output <= "111110010000011001110001100";--106 
            when "001101011" => output <= "111110010111010101010010101";--107 
            when "001101100" => output <= "111110011101100000111001110";--108 
            when "001101101" => output <= "111110100011000100001011001";--109 
            when "001101110" => output <= "111110101000000101001010100";--110 
            when "001101111" => output <= "111110101100101000110001101";--111 
            when "001110000" => output <= "111110110000110011000001010";--112 
            when "001110001" => output <= "111110110100100111001101101";--113 
            when "001110010" => output <= "111110111000001000000111011";--114 
            when "001110011" => output <= "111110111011011000000011001";--115 
            when "001110100" => output <= "111110111110011000111110100";--116
            when "001110101" => output <= "111111000001001100100100101";--117 
            when "001110110" => output <= "111111000011110100010001010";--118 
            when "001110111" => output <= "111111000110010001010011110";--119
            when "001111000" => output <= "111111001000100100110000100";--120 
            when "001111001" => output <= "111111001010101111100011011";--121 
            when "001111010" => output <= "111111001100110010100000111";--122 
            when "001111011" => output <= "111111001110101110010110110";--123 
            when "001111100" => output <= "111111010000100011101101101";--124 
            when "001111101" => output <= "111111010010010011001001101";--125
            when "001111110" => output <= "111111010011111101001010110";--126 
            when "001111111" => output <= "111111010101100010001101100";--127 
            when "010000000" => output <= "111111010111000010101011011";--128 
            when "010000001" => output <= "111111011000011110111011011";--129 
            when "010000010" => output <= "111111011001110111010010011";--130 
            when "010000011" => output <= "111111011011001100000010110";--131 
            when "010000100" => output <= "111111011100011101011101101";--132 
            when "010000101" => output <= "111111011101101011110010011";--133 
            when "010000110" => output <= "111111011110110111001110111";--134 
            when "010000111" => output <= "111111011111111111111111111";--135 
            when "010001000" => output <= "111111100001000110010001001";--136 
            when "010001001" => output <= "111111100010001010001101010";--137 
            when "010001010" => output <= "111111100011001011111110001";--138 
            when "010001011" => output <= "111111100100001011101100110";--139 
            when "010001100" => output <= "111111100101001001100001011";--140 
            when "010001101" => output <= "111111100110000101100011111";--141 
            when "010001110" => output <= "111111100110111111111011010";--142 
            when "010001111" => output <= "111111100111111000101110000";--143 
            when "010010000" => output <= "111111101000110000000010100";--144 
            when "010010001" => output <= "111111101001100101111110010";--145 
            when "010010010" => output <= "111111101010011010100110110";--146 
            when "010010011" => output <= "111111101011001110000000110";--147 
            when "010010100" => output <= "111111101100000000010001000";--148 
            when "010010101" => output <= "111111101100110001011011111";--149 
            when "010010110" => output <= "111111101101100001100101011";--150 
            when "010010111" => output <= "111111101110010000110001100";--151 
            when "010011000" => output <= "111111101110111111000011101";--152 
            when "010011001" => output <= "111111101111101100011111011";--153 
            when "010011010" => output <= "111111110000011001000111110";--154 
            when "010011011" => output <= "111111110001000101000000000";--155 
            when "010011100" => output <= "111111110001110000001010111";--156 
            when "010011101" => output <= "111111110010011010101011001";--157 
            when "010011110" => output <= "111111110011000100100011011";--158 
            when "010011111" => output <= "111111110011101101110110000";--159 
            when "010100000" => output <= "111111110100010110100101101";--160 
            when "010100001" => output <= "111111110100111110110100001";--161 
            when "010100010" => output <= "111111110101100110100100000";--162 
            when "010100011" => output <= "111111110110001101110111001";--163 
            when "010100100" => output <= "111111110110110100101111101";--164 
            when "010100101" => output <= "111111110111011011001111010";--165 
            when "010100110" => output <= "111111111000000001011000000";--166 
            when "010100111" => output <= "111111111000100111001011100";--167 
            when "010101000" => output <= "111111111001001100101011101";--168 
            when "010101001" => output <= "111111111001110001111010000";--169 
            when "010101010" => output <= "111111111010010110111000011";--170 
            when "010101011" => output <= "111111111010111011101000001";--171 
            when "010101100" => output <= "111111111011100000001010111";--172
            when "010101101" => output <= "111111111100000100100010010";--173 
            when "010101110" => output <= "111111111100101000101111101";--174 
            when "010101111" => output <= "111111111101001100110100100";--175
            when "010110000" => output <= "111111111101110000110010011";--176
            when "010110001" => output <= "111111111110010100101010101";--177 
            when "010110010" => output <= "111111111110111000011110110";--178 
            when "010110011" => output <= "111111111111011100010000000";--179 
            when "010110100" => output <= "000000000000000000000000000";--180 
            when "010110101" => output <= "000000000000100011101111111";--181
            when "010110110" => output <= "000000000001000111100001001";--182
            when "010110111" => output <= "000000000001101011010101010";--183
            when "010111000" => output <= "000000000010001111001101100";--184
            when "010111001" => output <= "000000000010110011001011011";--185
            when "010111010" => output <= "000000000011010111010000010";--186
            when "010111011" => output <= "000000000011111011011101101";--187
            when "010111100" => output <= "000000000100011111110101000";--188
            when "010111101" => output <= "000000000101000100010111110";--189
            when "010111110" => output <= "000000000101101001000111100";--190
            when "010111111" => output <= "000000000110001110000101111";--191
            when "011000000" => output <= "000000000110110011010100010";--192
            when "011000001" => output <= "000000000111011000110100011";--193
            when "011000010" => output <= "000000000111111110100111111";--194
            when "011000011" => output <= "000000001000100100110000101";--195
            when "011000100" => output <= "000000001001001011010000010";--196
            when "011000101" => output <= "000000001001110010001000110";--197
            when "011000110" => output <= "000000001010011001011011111";--198
            when "011000111" => output <= "000000001011000001001011110";--199
            when "011001000" => output <= "000000001011101001011010010";--200
            when "011001001" => output <= "000000001100010010001001111";--201
            when "011001010" => output <= "000000001100111011011100100";--202
            when "011001011" => output <= "000000001101100101010100110";--203 
            when "011001100" => output <= "000000001110001111110101000";--204
            when "011001101" => output <= "000000001110111010111111111";--205
            when "011001110" => output <= "000000001111100110111000001";--206
            when "011001111" => output <= "000000010000010011100000100";--207 
            when "011010000" => output <= "000000010001000000111100010";--208
            when "011010001" => output <= "000000010001101111001110011";--209
            when "011010010" => output <= "000000010010011110011010100";--210
            when "011010011" => output <= "000000010011001110100100000";--211
            when "011010100" => output <= "000000010011111111101110111";--212
            when "011010101" => output <= "000000010100110001111111001";--213
            when "011010110" => output <= "000000010101100101011001001";--214
            when "011010111" => output <= "000000010110011010000001101";--215
            when "011011000" => output <= "000000010111001111111101011";--216
            when "011011001" => output <= "000000011000000111010001111";--217
            when "011011010" => output <= "000000011001000000000100101";--218
            when "011011011" => output <= "000000011001111010011100000";--219
            when "011011100" => output <= "000000011010110110011110100";--220
            when "011011101" => output <= "000000011011110100010011001";--221
            when "011011110" => output <= "000000011100110100000001110";--222
            when "011011111" => output <= "000000011101110101110010101";--223
            when "011100000" => output <= "000000011110111001101110110";--224
            when "011100001" => output <= "000000100000000000000000000";--225
            when "011100010" => output <= "000000100001001000110001000";--226
            when "011100011" => output <= "000000100010010100001101100";--227
            when "011100100" => output <= "000000100011100010100010010";--228
            when "011100101" => output <= "000000100100110011111101001";--229
            when "011100110" => output <= "000000100110001000101101100";--230
            when "011100111" => output <= "000000100111100001000100100";--231
            when "011101000" => output <= "000000101000111101010100100";--232
            when "011101001" => output <= "000000101010011101110010011";--233
            when "011101010" => output <= "000000101100000010110101001";--234
            when "011101011" => output <= "000000101101101100110110010";--235
            when "011101100" => output <= "000000101111011100010010010";--236
            when "011101101" => output <= "000000110001010001101001001";--237
            when "011101110" => output <= "000000110011001101011111000";--238
            when "011101111" => output <= "000000110101010000011100100";--239
            when "011110000" => output <= "000000110111011011001111011";--240
            when "011110001" => output <= "000000111001101110101100001";--241
            when "011110010" => output <= "000000111100001011101110101";--242
            when "011110011" => output <= "000000111110110011011011010";--243
            when "011110100" => output <= "000001000001100111000001011";--244
            when "011110101" => output <= "000001000100100111111100110";--245
            when "011110110" => output <= "000001000111110111111000100";--246
            when "011110111" => output <= "000001001011011000110010010";--247
            when "011111000" => output <= "000001001111001100111110101";--248
            when "011111001" => output <= "000001010011010111001110010";--249
            when "011111010" => output <= "000001010111111010110101011";--250
            when "011111011" => output <= "000001011100111011110100110";--251
            when "011111100" => output <= "000001100010011111000110001";--252
            when "011111101" => output <= "000001101000101010101101010";--253
            when "011111110" => output <= "000001101111100110001110011";--254
            when "011111111" => output <= "000001110111011011001111011";--255
            when "100000000" => output <= "000010000000010110000101001";--256
            when "100000001" => output <= "000010001010100110110111010";--257
            when "100000010" => output <= "000010010110100011000101010";--258
            when "100000011" => output <= "000010100100101000000011000";--259
            when "100000100" => output <= "000010110101011110110010010";--260
            when "100000101" => output <= "000011001010000010100100000";--261
            when "100000110" => output <= "000011100011101100010001110";--262
            when "100000111" => output <= "000100000100100111100111110";--263
            when "100001000" => output <= "000100110000011101011010110";--264 
            when "100001001" => output <= "000101101101110000101111111";--265
            when "100001010" => output <= "000111001001100111110000111";--266
            when "100001011" => output <= "001001100010100110001010110";--267
            when "100001100" => output <= "001110010100010111000011000";--268
            when "100001101" => output <= "011100101001010001110101111";--269
            when "100001110" => output <= "000000000000000000000000000";--270  
            when "100001111" => output <= "100011010110101110001010000";--271 
            when "100010000" => output <= "110001101011101000111100111";--272 
            when "100010001" => output <= "110110011101011001110101001";--273 
            when "100010010" => output <= "111000110110011000001111000";--274 
            when "100010011" => output <= "111010010010001111010000000";--275 
            when "100010100" => output <= "111011001111100010100101001";--276 
            when "100010101" => output <= "111011111011011000011000001";--277 
            when "100010110" => output <= "111100011100010011101110001";--278 
            when "100010111" => output <= "111100110101111101011011111";--279 
            when "100011000" => output <= "111101001010100001001101101";--280 
            when "100011001" => output <= "111101011011010111111100111";--281
            when "100011010" => output <= "111101101001011100111010101";--282 
            when "100011011" => output <= "111101110101011001001000101";--283 
            when "100011100" => output <= "111101111111101001111010110";--284 
            when "100011101" => output <= "111110001000100100110000100";--285 
            when "100011110" => output <= "111110010000011001110001100";--286 
            when "100011111" => output <= "111110010111010101010010101";--287 
            when "100100000" => output <= "111110011101100000111001110";--288 
            when "100100001" => output <= "111110100011000100001011001";--289
            when "100100010" => output <= "111110101000000101001010100";--290 
            when "100100011" => output <= "111110101100101000110001101";--291
            when "100100100" => output <= "111110110000110011000001010";--292 
            when "100100101" => output <= "111110110100100111001101101";--293 
            when "100100110" => output <= "111110111000001000000111011";--294
            when "100100111" => output <= "111110111011011000000011001";--295 
            when "100101000" => output <= "111110111110011000111110100";--296
            when "100101001" => output <= "111111000001001100100100101";--297 
            when "100101010" => output <= "111111000011110100010001010";--298
            when "100101011" => output <= "111111000110010001010011110";--299 
            when "100101100" => output <= "111111001000100100110000100";--300 
            when "100101101" => output <= "111111001010101111100011011";--301 
            when "100101110" => output <= "111111001100110010100000111";--302 
            when "100101111" => output <= "111111001110101110010110110";--303 
            when "100110000" => output <= "111111010000100011101101101";--304 
            when "100110001" => output <= "111111010010010011001001101";--305 
            when "100110010" => output <= "111111010011111101001010110";--306 
            when "100110011" => output <= "111111010101100010001101100";--307 
            when "100110100" => output <= "111111010111000010101011011";--308 
            when "100110101" => output <= "111111011000011110111011011";--309 
            when "100110110" => output <= "111111011001110111010010011";--310 
            when "100110111" => output <= "111111011011001100000010110";--311 
            when "100111000" => output <= "111111011100011101011101101";--312 
            when "100111001" => output <= "111111011101101011110010011";--313 
            when "100111010" => output <= "111111011110110111001110111";--314 
            when "100111011" => output <= "111111011111111111111111111";--315 
            when "100111100" => output <= "111111100001000110010001001";--316 
            when "100111101" => output <= "111111100010001010001101010";--317
            when "100111110" => output <= "111111100011001011111110001";--318 
            when "100111111" => output <= "111111100100001011101100110";--319 
            when "101000000" => output <= "111111100101001001100001011";--320 
            when "101000001" => output <= "111111100110000101100011111";--321 
            when "101000010" => output <= "111111100110111111111011010";--322
            when "101000011" => output <= "111111100111111000101110000";--323 
            when "101000100" => output <= "111111101000110000000010100";--324 
            when "101000101" => output <= "111111101001100101111110010";--325 
            when "101000110" => output <= "111111101010011010100110110";--326
            when "101000111" => output <= "111111101011001110000000110";--327 
            when "101001000" => output <= "111111101100000000010001000";--328 
            when "101001001" => output <= "111111101100110001011011111";--329
            when "101001010" => output <= "111111101101100001100101011";--330 
            when "101001011" => output <= "111111101110010000110001100";--331 
            when "101001100" => output <= "111111101110111111000011101";--332 
            when "101001101" => output <= "111111101111101100011111011";--333 
            when "101001110" => output <= "111111110000011001000111110";--334 
            when "101001111" => output <= "111111110001000101000000000";--335 
            when "101010000" => output <= "111111110001110000001010111";--336 
            when "101010001" => output <= "111111110010011010101011001";--337 
            when "101010010" => output <= "111111110011000100100011011";--338 
            when "101010011" => output <= "111111110011101101110110000";--339 
            when "101010100" => output <= "111111110100010110100101101";--340
            when "101010101" => output <= "111111110100111110110100001";--341 
            when "101010110" => output <= "111111110101100110100100000";--342 
            when "101010111" => output <= "111111110110001101110111001";--343 
            when "101011000" => output <= "111111110110110100101111101";--344 
            when "101011001" => output <= "111111110111011011001111010";--345 
            when "101011010" => output <= "111111111000000001011000000";--346 
            when "101011011" => output <= "111111111000100111001011100";--347 
            when "101011100" => output <= "111111111001001100101011101";--348 
            when "101011101" => output <= "111111111001110001111010000";--349
            when "101011110" => output <= "111111111010010110111000011";--350
            when "101011111" => output <= "111111111010111011101000001";--351
            when "101100000" => output <= "111111111011100000001010111";--352 
            when "101100001" => output <= "111111111100000100100010010";--353 
            when "101100010" => output <= "111111111100101000101111101";--354 
            when "101100011" => output <= "111111111101001100110100100";--355 
            when "101100100" => output <= "111111111101110000110010011";--356 
            when "101100101" => output <= "111111111110010100101010101";--357 
            when "101100110" => output <= "111111111110111000011110110";--358 
            when "101100111" => output <= "100000000000100011101111111";--359 
            when "101101000" => output <= "000000000000000000000000000";--360
            when others => output <= "000000000000000000000000000";
            end case;
           end if; 
        end process;
end tan_arc;
