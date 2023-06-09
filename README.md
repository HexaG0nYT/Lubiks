# Lubiks
Simple NxNxN Rubik's Cube Implementation made in Lua.

![Cube](https://cdn.discordapp.com/attachments/919406218840256535/1090304640349913170/image.png)
![Cube2](https://cdn.discordapp.com/attachments/919406218840256535/1090305204752232569/image.png)

# Usage Examples

*Creating a cube:*

```lua
local Lubiks = require("Lubiks")
local Cube = Lubiks:new() -- default creates a 3x3 cube

print(Cube) -- prints cube:
--[[
      W W W
      W W W
      W W W
O O O G G G R R R B B B
O O O G G G R R R B B B
O O O G G G R R R B B B
      Y Y Y
      Y Y Y
      Y Y Y
]]
```

*Executing moves:*

```lua
local Lubiks = require("Lubiks")
local Cube = Lubiks:new() -- default creates a 3x3 cube

Cube:move("R U R' U'") -- moves R U R' U'
Cube:undoMove(2) -- undo moves R' U'
```

*Scrambling a cube:*

```lua
local Lubiks = require("Lubiks")
local Cube = Lubiks:new() -- default creates a 3x3 cube

local scramble = Cube:generateScramble(10) -- generates a 10 move long scramble string
Cube:move(scramble) -- scramble cube
```

*Creating different sized cubes:*

```lua
local Lubiks = require("Lubiks")
local Cube = Lubiks:new(2) -- creates a 2x2 cube

Cube:move("R U R' F' R U R' U' R' F R2 U' R' U'") -- Do a JPerm
print(Cube)
--[[
    W W
    W W
O O G R B G R B
O O G G R R B B
    Y Y
    Y Y
]]

Cube:setSize(3) -- resets cube and sets cube size to 3x3
print(Cube)
--[[
      W W W
      W W W
      W W W
O O O G G G R R R B B B
O O O G G G R R R B B B
O O O G G G R R R B B B
      Y Y Y
      Y Y Y
      Y Y Y
]]
```

# Functions

new
--
```lua
function new(size: number = 3)
```
- Creates a new *Cube*

reset
--
```lua
function reset()
```
- Resets the cube into its initial state

solved
--
```lua
function solved(face_colors: table)
```
- Determines if the cube is solved/not
- Returns *true* if solved, *false* otherwise

generateScramble
--
```lua
function generateScramble(len: number, return_list: boolean)
```
- Generates and returns a *len* move scramble string

undoMove
--
```lua
function undoMove(count: number = 1)
```
- Undoes an amount of moves from MoveHistory

move
--
- Perform a move on the cube [e.g.: "R U R' U'"]

moveOnce
--
```lua
function moveOnce(move: string, blockHistory: boolean)
```
- Move the cube once [e.g.: R, x2, 2r4]
