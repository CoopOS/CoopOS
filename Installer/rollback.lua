local termpullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
shell.run("clear")
shell.run("wget https://raw.githubusercontent.com/CoopOS/CoopOS/beta/CoopOS/loadingbar.lua /CoopOS/loadingbar.lua")
local loadingbarmod = require("/CoopOS/loadingbar.lua")
--start rollback
--term.setCursorPos(19, 16)
sleep(1)
term.setCursorPos(17, 15)
print("Rolling Back System")
term.setCursorPos(19, 16)
loadingbarmod.startani(1,19,27)