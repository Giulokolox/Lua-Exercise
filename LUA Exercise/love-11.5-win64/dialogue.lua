Dialogue = Object:extend()

require "font"



function Dialogue:new(question, answer1, answer2, character)
    font = Font("SuperToastPersonalUse.ttf", 12)
    love.graphics.setFont(font.font)
    self.question = question
    self.answer1 = answer1 
    self.answer2 = answer2
    self.character = character
end 

function Dialogue:draw()
    if self.character == 1 then 
        self.x = 200
        self.y = 90
    elseif self.character == 2 then 
        self.x = 200       
        self.y = 240
        
    elseif self.character == 3 then 
        self.x = 200
        self.y = 390
    end
    love.graphics.print(self.question, self.x, self.y)
    love.graphics.print("" .. self.answer1, self.x, self.y + 50)
    love.graphics.print("" .. self.answer2, self.x, self.y + 100)
end 