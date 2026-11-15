local pressedButton = nil



function clickCheck(xVal, yVal)
    for x = 1, #buttons do
        if buttons[x].x <=  xVal and buttons[x].x + buttons[x].width >= xVal
        and buttons[x].y <= yVal and buttons[x].y + buttons[x].height >= yVal then
            print("pressed: ", buttons[x].id)
            pressedButton = buttons[x].id
        end
    end
end

function plFunction()
    if functions[pressedButton] ~= nil then
        functions[pressedButton]()
    end
end

function drawButtons()
    for x = 1, #buttons do
        buttons[x]:draw()
    end
end

function newButton(x, y, width, height, id)
    return{
        id = id,
        x = x,
        y = y,
        width = width,
        height = height,
        chainnedFunction = nil,

        draw = function(self)
            love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
        end
    }
end

buttons = {}

functions = {}

functions[1] = function()
    print("button 1")
end

functions[2] = function()
    love.graphics.setColor(math.random(), math.random(), math.random())
end

functions[3] = function()
    buttons[1].x = 10
    buttons[1].y = 10
end