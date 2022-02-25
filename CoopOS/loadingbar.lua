local isloading = false
local progress = 0
local module = {}
function module.startani(y,startx=3,endx=16)
    isloading = true
    term.setCursorPos(startx,y)
    module.animate(y,startx,endx)
end
function module.animate(ypos,startpos,endpos,persec=1.5,startprogress=0,colorun=colors.lightGray,colorye=colors.white)
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
function module.endani()
    isloading = false
end


return module