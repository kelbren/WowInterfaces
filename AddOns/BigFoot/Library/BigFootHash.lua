 BHashClass = {} local function BLHash00001110111101101101111(BLHash10001101010001101001011100010001) local BLHash000111000101111100110001000111111 = function (BLHash00110010101101100011101010010010000) return strchar(bit.band(bit.rshift(BLHash10001101010001101001011100010001, BLHash00110010101101100011101010010010000),255)) end return BLHash000111000101111100110001000111111(0)..BLHash000111000101111100110001000111111(8)..BLHash000111000101111100110001000111111(16)..BLHash000111000101111100110001000111111(24) end do function beInt(BLHash00110010101101100011101010010010000) local BLHash10111110011000111010110010100100100 = 0 for BLHash10001101010001101001011100010001 = 1, strlen(BLHash00110010101101100011101010010010000) do BLHash10111110011000111010110010100100100 = BLHash10111110011000111010110010100100100 * 256 + strbyte(BLHash00110010101101100011101010010010000, BLHash10001101010001101001011100010001) end return BLHash10111110011000111010110010100100100 end function leInt(BLHash00110010101101100011101010010010000) local BLHash10111110011000111010110010100100100 = 0 for BLHash10001101010001101001011100010001 = strlen(BLHash00110010101101100011101010010010000), 1, -1 do BLHash10111110011000111010110010100100100 = BLHash10111110011000111010110010100100100 * 256 + strbyte(BLHash00110010101101100011101010010010000, BLHash10001101010001101001011100010001) end return BLHash10111110011000111010110010100100100 end function leStrCuts(BLHash00110010101101100011101010010010000,...) local BLHash01000100000111001111011000010,BLHash10101110111101111110100110=1,{} for BLHash10001101010001101001011100010001=1,getn(arg) do tinsert(BLHash10101110111101111110100110,leInt(strsub(BLHash00110010101101100011101010010010000,BLHash01000100000111001111011000010,BLHash01000100000111001111011000010+arg[BLHash10001101010001101001011100010001]-1))) BLHash01000100000111001111011000010 = BLHash01000100000111001111011000010 + arg[BLHash10001101010001101001011100010001] end return BLHash10101110111101111110100110 end end function BHashClass:constructor() if (BLHash000100010001011010110110101) then return end BLHash000100010001011010110110101 = {BLHash01000100101000100111110101001100100010 = tonumber('ffffffff',16), BLHash1100001110000100101111010011110110010={}} gsub( [[ d76aa478 e8c7b756 242070db c1bdceee f57c0faf 4787c62a a8304613 fd469501 698098d8 8b44f7af ffff5bb1 895cd7be 6b901122 fd987193 a679438e 49b40821 f61e2562 c040b340 265e5a51 e9b6c7aa d62f105d 02441453 d8a1e681 e7d3fbc8 21e1cde6 c33707d6 f4d50d87 455a14ed a9e3e905 fcefa3f8 676f02d9 8d2a4c8a fffa3942 8771f681 6d9d6122 fde5380c a4beea44 4bdecfa9 f6bb4b60 bebfbc70 289b7ec6 eaa127fa d4ef3085 04881d05 d9d4d039 e6db99e5 1fa27cf8 c4ac5665 f4292244 432aff97 ab9423a7 fc93a039 655b59c3 8f0ccc92 ffeff47d 85845dd1 6fa87e4f fe2ce6e0 a3014314 4e0811a1 f7537e82 bd3af235 2ad7d2bb eb86d391 67452301 efcdab89 98badcfe 10325476 ]], '(%w+)', function (BLHash00110010101101100011101010010010000) tinsert(BLHash000100010001011010110110101.BLHash1100001110000100101111010011110110010,tonumber(BLHash00110010101101100011101010010010000, 16)) end) BLHash000100010001011010110110101.BLHash0111000100101100111111101011010111101 = function(BLHash10110011101110000001000, BLHash01111010001111011111000, BLHash0111110001000100100111100100110101110, BLHash0011110010011010110001101) local BLHash000111000101111100110001000111111 = function (BLHash1001000010111111010110000101000000111, BLHash00100101011100111011010, BLHash1101111100001011000100110110010) return bit.bor(bit.band(BLHash1001000010111111010110000101000000111, BLHash00100101011100111011010),bit.band(-BLHash1001000010111111010110000101000000111 - 1, BLHash1101111100001011000100110110010)) end local BLHash0100001001111100011001011 = function (BLHash1001000010111111010110000101000000111, BLHash00100101011100111011010, BLHash1101111100001011000100110110010) return bit.bor(bit.band(BLHash1001000010111111010110000101000000111, BLHash1101111100001011000100110110010),bit.band(BLHash00100101011100111011010, -BLHash1101111100001011000100110110010 - 1)) end local BLHash101111000000110111111011101110 = function (BLHash1001000010111111010110000101000000111, BLHash00100101011100111011010, BLHash1101111100001011000100110110010) return bit.bxor(BLHash1001000010111111010110000101000000111, bit.bxor(BLHash00100101011100111011010, BLHash1101111100001011000100110110010)) end local BLHash10001101010001101001011100010001 = function (BLHash1001000010111111010110000101000000111, BLHash00100101011100111011010, BLHash1101111100001011000100110110010) return bit.bxor(BLHash00100101011100111011010, bit.bor(BLHash1001000010111111010110000101000000111, -BLHash1101111100001011000100110110010 - 1)) end local BLHash1101111100001011000100110110010 = function (BLHash000111000101111100110001000111111, BLHash01101101101011101001010001111100, BLHash1110001010100101001001100111111, BLHash00111001110001111101111101101000, BLHash111000011011100101101001101, BLHash1001000010111111010110000101000000111, BLHash00110010101101100011101010010010000, BLHash01100100011100010001110) BLHash01101101101011101001010001111100 = bit.band(BLHash01101101101011101001010001111100 + BLHash000111000101111100110001000111111(BLHash1110001010100101001001100111111, BLHash00111001110001111101111101101000, BLHash111000011011100101101001101) + BLHash1001000010111111010110000101000000111 + BLHash01100100011100010001110, BLHash000100010001011010110110101.BLHash01000100101000100111110101001100100010) return bit.bor(bit.lshift(bit.band(BLHash01101101101011101001010001111100, bit.rshift(BLHash000100010001011010110110101.BLHash01000100101000100111110101001100100010, BLHash00110010101101100011101010010010000)), BLHash00110010101101100011101010010010000),bit.rshift(BLHash01101101101011101001010001111100, 32 - BLHash00110010101101100011101010010010000)) + BLHash1110001010100101001001100111111 end local BLHash01101101101011101001010001111100, BLHash1110001010100101001001100111111, BLHash00111001110001111101111101101000, BLHash111000011011100101101001101 = BLHash10110011101110000001000, BLHash01111010001111011111000, BLHash0111110001000100100111100100110101110, BLHash0011110010011010110001101 local BLHash001000110001100000110110000110 = BLHash000100010001011010110110101.BLHash1100001110000100101111010011110110010 BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 0], 7,BLHash001000110001100000110110000110[ 1]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 1],12,BLHash001000110001100000110110000110[ 2]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 2],17,BLHash001000110001100000110110000110[ 3]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 3],22,BLHash001000110001100000110110000110[ 4]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 4], 7,BLHash001000110001100000110110000110[ 5]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 5],12,BLHash001000110001100000110110000110[ 6]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 6],17,BLHash001000110001100000110110000110[ 7]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 7],22,BLHash001000110001100000110110000110[ 8]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 8], 7,BLHash001000110001100000110110000110[ 9]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 9],12,BLHash001000110001100000110110000110[10]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[10],17,BLHash001000110001100000110110000110[11]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[11],22,BLHash001000110001100000110110000110[12]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[12], 7,BLHash001000110001100000110110000110[13]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[13],12,BLHash001000110001100000110110000110[14]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[14],17,BLHash001000110001100000110110000110[15]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash000111000101111100110001000111111,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[15],22,BLHash001000110001100000110110000110[16]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 1], 5,BLHash001000110001100000110110000110[17]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 6], 9,BLHash001000110001100000110110000110[18]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[11],14,BLHash001000110001100000110110000110[19]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 0],20,BLHash001000110001100000110110000110[20]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 5], 5,BLHash001000110001100000110110000110[21]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[10], 9,BLHash001000110001100000110110000110[22]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[15],14,BLHash001000110001100000110110000110[23]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 4],20,BLHash001000110001100000110110000110[24]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 9], 5,BLHash001000110001100000110110000110[25]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[14], 9,BLHash001000110001100000110110000110[26]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 3],14,BLHash001000110001100000110110000110[27]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 8],20,BLHash001000110001100000110110000110[28]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[13], 5,BLHash001000110001100000110110000110[29]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 2], 9,BLHash001000110001100000110110000110[30]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 7],14,BLHash001000110001100000110110000110[31]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash0100001001111100011001011,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[12],20,BLHash001000110001100000110110000110[32]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 5], 4,BLHash001000110001100000110110000110[33]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 8],11,BLHash001000110001100000110110000110[34]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[11],16,BLHash001000110001100000110110000110[35]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[14],23,BLHash001000110001100000110110000110[36]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 1], 4,BLHash001000110001100000110110000110[37]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 4],11,BLHash001000110001100000110110000110[38]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 7],16,BLHash001000110001100000110110000110[39]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[10],23,BLHash001000110001100000110110000110[40]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[13], 4,BLHash001000110001100000110110000110[41]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 0],11,BLHash001000110001100000110110000110[42]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 3],16,BLHash001000110001100000110110000110[43]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 6],23,BLHash001000110001100000110110000110[44]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 9], 4,BLHash001000110001100000110110000110[45]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[12],11,BLHash001000110001100000110110000110[46]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[15],16,BLHash001000110001100000110110000110[47]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash101111000000110111111011101110,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 2],23,BLHash001000110001100000110110000110[48]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 0], 6,BLHash001000110001100000110110000110[49]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 7],10,BLHash001000110001100000110110000110[50]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[14],15,BLHash001000110001100000110110000110[51]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 5],21,BLHash001000110001100000110110000110[52]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[12], 6,BLHash001000110001100000110110000110[53]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[ 3],10,BLHash001000110001100000110110000110[54]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[10],15,BLHash001000110001100000110110000110[55]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 1],21,BLHash001000110001100000110110000110[56]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 8], 6,BLHash001000110001100000110110000110[57]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[15],10,BLHash001000110001100000110110000110[58]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 6],15,BLHash001000110001100000110110000110[59]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[13],21,BLHash001000110001100000110110000110[60]) BLHash01101101101011101001010001111100 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash100100110011110001011001110001000101[ 4], 6,BLHash001000110001100000110110000110[61]) BLHash111000011011100101101001101 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash100100110011110001011001110001000101[11],10,BLHash001000110001100000110110000110[62]) BLHash00111001110001111101111101101000 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash100100110011110001011001110001000101[ 2],15,BLHash001000110001100000110110000110[63]) BLHash1110001010100101001001100111111 = BLHash1101111100001011000100110110010(BLHash10001101010001101001011100010001,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101,BLHash01101101101011101001010001111100,BLHash100100110011110001011001110001000101[ 9],21,BLHash001000110001100000110110000110[64]) return BLHash10110011101110000001000 + BLHash01101101101011101001010001111100, BLHash01111010001111011111000 + BLHash1110001010100101001001100111111, BLHash0111110001000100100111100100110101110 + BLHash00111001110001111101111101101000, BLHash0011110010011010110001101 + BLHash111000011011100101101001101 end BLHash000100010001011010110110101.BLHash01100001111001001011110001101010 = function(BLHash01101101101011101001010001111100, BLHash1110001010100101001001100111111) return BLHash01101101101011101001010001111100 - math.floor(BLHash01101101101011101001010001111100/BLHash1110001010100101001001100111111)*BLHash1110001010100101001001100111111 end end function BHashClass:Hash(BLHash00110010101101100011101010010010000) local BLHash1010000001000110111101010111110 = string.len(BLHash00110010101101100011101010010010000) local BLHash00110111111010111110000 = 56 - BLHash000100010001011010110110101.BLHash01100001111001001011110001101010(BLHash1010000001000110111101010111110, 64) if (BLHash000100010001011010110110101.BLHash01100001111001001011110001101010(BLHash1010000001000110111101010111110, 64) > 56) then BLHash00110111111010111110000 = BLHash00110111111010111110000 + 64 end if (BLHash00110111111010111110000 == 0) then BLHash00110111111010111110000 = 64 end BLHash00110010101101100011101010010010000 = BLHash00110010101101100011101010010010000..strchar(128)..strrep(strchar(0), BLHash00110111111010111110000 - 1) BLHash00110010101101100011101010010010000 = BLHash00110010101101100011101010010010000..BLHash00001110111101101101111(8 * BLHash1010000001000110111101010111110)..BLHash00001110111101101101111(0) local BLHash001000110001100000110110000110 = BLHash000100010001011010110110101.BLHash1100001110000100101111010011110110010 local BLHash01101101101011101001010001111100, BLHash1110001010100101001001100111111, BLHash00111001110001111101111101101000, BLHash111000011011100101101001101 = BLHash001000110001100000110110000110[65], BLHash001000110001100000110110000110[66], BLHash001000110001100000110110000110[67], BLHash001000110001100000110110000110[68] for BLHash10001101010001101001011100010001 = 1, strlen(BLHash00110010101101100011101010010010000), 64 do BLHash100100110011110001011001110001000101 = leStrCuts(strsub(BLHash00110010101101100011101010010010000, BLHash10001101010001101001011100010001, BLHash10001101010001101001011100010001 + 63), 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4) BLHash100100110011110001011001110001000101[0] = table.remove(BLHash100100110011110001011001110001000101,1) BLHash01101101101011101001010001111100,BLHash1110001010100101001001100111111,BLHash00111001110001111101111101101000,BLHash111000011011100101101001101 = BLHash000100010001011010110110101.BLHash0111000100101100111111101011010111101(BLHash01101101101011101001010001111100, BLHash1110001010100101001001100111111, BLHash00111001110001111101111101101000, BLHash111000011011100101101001101) end local BLHash000011011110000100111110111111111 = function (BLHash10011000001111111110001100) return beInt(BLHash00001110111101101101111(BLHash10011000001111111110001100)) end return format("%08x%08x%08x%08x", BLHash000011011110000100111110111111111(BLHash01101101101011101001010001111100), BLHash000011011110000100111110111111111(BLHash1110001010100101001001100111111), BLHash000011011110000100111110111111111(BLHash00111001110001111101111101101000), BLHash000011011110000100111110111111111(BLHash111000011011100101101001101)) end BLibrary:Register(BHashClass, "BHashClass") BHash = BLibrary:CreateInstance("BHashClass") 