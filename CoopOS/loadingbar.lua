local isloading = false
local progress = 0
local module = {}
module.startani = function(y,startx=3,endx=16)
    isloading = true
    term.setCursorPos(startx,y)
    module.animate(y,startx,endx)
end
module.animate = function(ypos,startpos,endpos,persec=1.5,startprogress=0,colorun=colors.lightGray,colorye=colors.white)
    progress = startprogress
    repeat
        term.clearLine()
        paintutils.drawLine(startpos, ypos, endpos, ypos,colorun)
        if not progress == 0 then
            paintutils.drawLine(startpos, ypos, startpos + (progress-1), ypos,colorye)
        else if (startpos + progress) == endpos then
            isloading = false
        end
        progress = progress + 1
        sleep(persec)
     until(isloading = false)
end
module.endani = function()
    isloading = false
end


return module