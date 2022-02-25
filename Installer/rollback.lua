local termpullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
shell.run("clear")
shell.run("wget https://raw.githubusercontent.com/CoopOS/CoopOS/beta/img/dots.nfp /CoopOS/dots0.nfp")
shell.run("clear")shell.run("wget https://raw.githubusercontent.com/CoopOS/CoopOS/beta/img/dots1.nfp /CoopOS/dots1.nfp")
shell.run("clear")shell.run("wget https://raw.githubusercontent.com/CoopOS/CoopOS/beta/img/dots2.nfp /CoopOS/dots2.nfp")
shell.run("clear")shell.run("wget https://raw.githubusercontent.com/CoopOS/CoopOS/beta/img/dots3.nfp /CoopOS/dots3.nfp")
shell.run("clear")
local dotsimage = 0
function dots()
    
    local olddots = dotsimage
    if dotsimage == 3 then dotsimage = 0 else dotsimage++ end
    return "/CoopOS/dots" + olddots + ".nfp"
end
--start rollback
--term.setCursorPos(19, 16)
sleep(1)
for i=10,1,-1 do 
    term.setCursorPos(17, 15)
    paintutils.drawImage(paintutils.loadImage(dots()), 19, 16)
    sleep(1)
    shell.run("clear")
end