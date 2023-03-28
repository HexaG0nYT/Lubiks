-- Play a command line 2d rubiks cube
local Lubiks = require("Lubiks")

math.randomseed(os.time())
local Cube = Lubiks:new()
local Scramble = Cube:generateScramble(math.random(8, 15))
Cube:move(Scramble)

function input(text)
    io.write(text); io.flush()
    return io.read()
end

repeat
    print('Scramble:', Scramble)
    print(Cube)
    local moves = input('Enter your move(s): ')
    Cube:move(moves)
    os.execute('cls')
until Cube:solved()

print('You have succesfully solved the cube!')
print('Move history [ignore scramble moves]:', table.concat(Cube:getMoveHistory(), ' '))
os.execute('pause')