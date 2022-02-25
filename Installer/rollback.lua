local termpullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
shell.run("clear")

--loadingbar.lua
local isloading = false
local progress = 0
local loadingbar = {}
startani = function(y,startx=3,endx=16)
    isloading = true
    term.setCursorPos(startx,y)
    animatelbar(y,startx,endx)
end
animatelbar = function(ypos,startpos,endpos,persec=1.5,startprogress=0,colorun=colors.lightGray,colorye=colors.white)
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
endani = function()
    isloading = false
end


--start rollback
--term.setCursorPos(19, 16)
sleep(1)
term.setCursorPos(17, 15)
print("Rolling Back System")
term.setCursorPos(19, 16)
startani(17,19,27)