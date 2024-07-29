Rectangle = Object:extend()

function Rectangle:new(x,y, widht, height)
    self.x = x 
    self.y = y 
    self.width = widht
    self.height = height
end


function Rectangle:draw()
    love.graphics.rectangle("line", self.x,self.y,self.width,self.height)
end 
