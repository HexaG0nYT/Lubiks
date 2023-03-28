# Lubiks
Simple NxNxN Rubik's Cube Implementation made in Lua.

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
