function love.load()
    Object = require "classic"
    require  "rectangle"
    require "dialogue"
    
    rectangle0 = Rectangle(100,100, 50,50)
    rectangle1 = Rectangle(100, 200, 60, 60)
    rectangle2 = Rectangle(100,300, 50, 70) 

    character = 1
    question = "chi ha vinto i mondiali nel 2006?"
    answer1 = "Italia"
    answer2 = "Francia"
    dialogue = Dialogue(question, answer1, answer2,character)
    nquestion = 1 
    answerIsCorrect = false
    answer2IsCorrect = false

end

function love:update()
if nquestion == 1 then
    if love.keyboard.isDown("1") then
        dialogue.question = "Italia"
        dialogue.answer1 = " "
        dialogue.answer2 = " "
        dialogue.character = 2
        nquestion = nquestion + 1
        answerIsCorrect = true
    elseif love.keyboard.isDown("2") then
        dialogue.question = "Francia"
        dialogue.answer1 = " "
        dialogue.answer2 = " "
        dialogue.character = 2
        nquestion = nquestion + 1
        answerIsCorrect = false
    end
end
if nquestion == 2 then
    if love.keyboard.isDown("space") then
        nquestion = nquestion + 1
    end
end

if nquestion == 3 then
    dialogue.character = 1
    nquestion = nquestion + 1
    if answerIsCorrect then
        dialogue.question = "Corretto, continuerai tu a rispondere"
    else 
        dialogue.question = "Sbagliato, la prossima domanda sara' per l'altro giocatore"
    end
end

if nquestion == 4 then
    if love.keyboard.isDown("left") then
        nquestion = nquestion + 1
    end
end

if nquestion == 5 then
    dialogue.question = "Dimmi la capitale dell'Italia"
    dialogue.answer1 = " Napoli"
    dialogue.answer2 = " Roma"
    nquestion = nquestion + 1
end

if nquestion == 6 then
    if love.keyboard.isDown("1") then
        dialogue.question = "Napoli"
        dialogue.answer1 = " "
        dialogue.answer2 = " "
        nquestion = nquestion + 1
        answer2IsCorrect = false
    elseif love.keyboard.isDown("2") then
        dialogue.question = "Roma"
        dialogue.answer1 = " "
        dialogue.answer2 = " "
        nquestion = nquestion + 1
        answer2IsCorrect = true
    end
end

if nquestion == 7 then
    if answerIsCorrect then
        dialogue.character = 2
    else 
        dialogue.character = 3
    end
    nquestion = nquestion + 1
end

if nquestion == 8 then
    if love.keyboard.isDown("space") then
        nquestion = nquestion + 1
    end
end

if nquestion == 9 then
    dialogue.character = 1
    nquestion = nquestion + 1
    if answer2IsCorrect then
        dialogue.question = "Corretto, continuerai tu a rispondere"
    else 
        dialogue.question = "Sbagliato, la prossima domanda sara' per l'altro giocatore"
    end
end
end
function love.draw()
    rectangle0:draw()
    rectangle1:draw()
    rectangle2:draw()

    dialogue:draw()

end


--[[
function love.load()
    Object = require "classic"
    require "player"
    require "enemy"
    require "projectile"
    
    player = Player()
    enemy = Enemy()
    listOfBullets = {}
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)
    
    for i,v in ipairs(listOfBullets) do
        v:update(dt)
        v:checkCollision(enemy)
        
        if v.dead then
            table.remove(listOfBullets, i)
        end
    end
end

function love.draw()
    player:draw()
    enemy:draw()
    
    for i,v in ipairs(listOfBullets) do
        v:draw()
    end
end

function love.keypressed(key)
    player:keyPressed(key)
end
--]]
-- print("Ciao")
-- useless_table = {one = "test1" , two = "test2"}

-- useless_metatable = {
--     __index = function (t,k)
--      print('calling __index in metatable')
--      print('searching for' .. k)
--      return 100
--     end
-- }
-- setmetatable(useless_table, useless_metatable)

-- print(useless_table.one)
-- print(useless_table.three)
-- printr(useless_table.boo)


-- Object = require "classic"
-- function love.load()
--     --Don't forget to load the file
--     require "rectangle"

--     r1 = Rectangle()
--     r2 = Rectangle()
--     print(r1.test, r2.test)
-- end
-- print (3 + 4)

-- a = 5
-- b = 2

-- print (a + b)

-- a  = 10 - 10
-- b = 10 * 2
-- c = 10 / 3
-- d = 20 ^ 10

-- name = "Giuliano"
-- age = "21"
-- text = "Hello, my name is " .. name .. ", and I'm " .. age .. " years old."
-- print(text)

-- example = function ()
--     print("Hello World!")
-- end


-- example()



-- function sayNumber(num)
--     print("I like the number " .. num)
-- end

-- sayNumber(15)
-- sayNumber(230)



-- function giveMeANumber()
--     return 121
-- end

-- a = giveMeANumber()
-- print(a)


-- function love.draw()
-- --love.graphics.circle("fill", 10, 10, 100, 25)
-- --love.graphics.rectangle("line", 200, 30, 120, 100)
-- end

-- function love.load()
--     x = 100 
--     move = true
-- end

-- function love.draw()
--     love.graphics.rectangle("line", x, 50, 200, 150)
-- end

-- function love.update(dt)
--     if move == true then
--         x = x + 100 * dt
--     end
-- end


-- function love.update(dt)
--     if x < 550 then
--         x = x + 100 * dt
--     end
-- end

-- if love.keyboard.isDown("right") then
--     x = x + 100 * dt
-- end


-- function love.load()
--     fruits = {"apple", "banana"}
--     table.insert(fruits, "pear")

--     for i=1,#fruits do
--         print(fruits[i])
--         love.graphics.print(fruits[i], 100, 100 + 50 * i)
--     end
-- end





-- function love.load()
--     rect = {}
--     rect.x = 100
--     rect.y = 100
--     rect.width = 70
--     rect.height = 90
-- end

-- function love.draw()
--     love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.height)
-- end



-- -- Load some default values for our rectangle.
-- function love.load()
--     x, y, w, h = 20, 20, 60, 20
--     ship = love.graphics.newImage("playerShip1_blue.png")
-- end

-- -- Increase the size of the rectangle every frame.
-- function love.update(dt)
--     w = w + 1
--     h = h + 1
--     print(ship)
-- end
 
-- -- Draw a coloured rectangle.
-- function love.draw()
--     -- In versions prior to 11.0, color component values are (0, 102, 102)
--     -- love.graphics.setColor(0, 0.4, 0.4)
--     -- love.graphics.rectangle("fill", x, y, w, h)
--     love.graphics.draw(ship)
--     love.graphics.draw(ship, 200,200)
--     love.graphics.draw(ship, 200,200)
--    -- print(ship:getHeight(200))

-- end

-- a = {"ciao", "hello ", "foo"}

-- print(a[0])
-- print(a[1])
-- print(a[100])

-- b = {"ciao", test = 1, test 2 ="100", 100, 200, [1] = 400}


-- for k,v in pairs(b) do
--     print(k.. " " .. v)
-- end 


--[[
a = "test"

function hello()
    print(a)
    x = 100
    local y = "ciao"
end

hello()

print(x)

print(aaaaaaaaaaaaaaaaa)

if x > 100 then
    print("ok")
end

print(_G.x)

print(y)

t = {}
t.test = 1
t.test2 = 100
t.hello = "ciao"

t["test3"] = 200



t = {test = 1, test2 = 100, hello2 = "ciao"}

t.callme = function()
    return 10000
end

warrior = {}

warrior.hp = 100
warrior.stamina = 200
warrior.attack = function(other)
    other.hp = other.hp - 10
    me.stamina = me.stamina - 5
end
 
function warrior:attack(other) -- due punti si mettono quando dev'essere sottinteso che la prima chiamata dev'essere fatta a se stesso 
    other.hp = other.hp - 10
    self.stamina = self.stamina - 5
end 

--warrior0 = warrior
--warrior0:attack(other)



print(t.hello)

print (t.callme())

player = require "Player0"

print(player0.name)
--]]