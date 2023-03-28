local Lubiks = require("Lubiks")

-- Move test
local Cube = Lubiks:new()
Cube:move("U L F R B D U' L' F' R' B' D' U2 L2 F2 R2 B2 D2 U2' L2' F2' R2' B2' D2' u l f r b d u' l' f' r' b' d' u2 l2 f2 r2 b2 d2 u2' l2' f2' r2' b2' d2' M E S M' E' S' M2 E2 S2 x y z x' y' z' x2 y2 z2") -- test all possible moves
print(Cube)
--[[
      W W W
      W G W
      W Y G
R G R B G W O O B O R G
G W B R O O B Y Y O R O
B W Y G B O Y R Y O G R
      R Y B
      B B Y
      Y R G
]]