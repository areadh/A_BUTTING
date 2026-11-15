local A_BUTTING = require("A_BUTTING")

buttons[1] = newButton(200, 200, 100, 100, 1)
buttons[2] = newButton(400, 500, 50, 50, 2)
buttons[3] = newButton(600, 500, 25, 25, 3)

function love.update(dt)

end

function love.draw()
    drawButtons()
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
        mouseX = x
        mouseY = y

        clickCheck(x, y)
        plFunction()
    end

end