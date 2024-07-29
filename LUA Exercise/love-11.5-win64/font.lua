Font = Object:extend()

function Font:new(filename, scale)
    self.filename = filename
    self.scale = scale
    self:create()
end

function Font:create()
   self.font =love.graphics.newFont(self.filename, self.scale)
end

