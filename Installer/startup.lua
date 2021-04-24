shell.run("clear")
local versionMode = "beta"
local pullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
local version = "1.0 BETA"



term.setTextColor(colors.yellow)
print("CoopOS v"..version)
term.setTextColor(colors.white)
sleep(8)
print("test completed")
sleep(7)
if fs.exists("install.lua") then
  fs.delete("install.lua")
end
if fs.exists("installerdown.lua") then
  fs.delete("installerdown.lua")
end
shell.run("clear")
term.setTextColor(colors.yellow)
print("CoopOS v"..version)
term.setTextColor(colors.white)
print('downloading the "installer downloader"')
sleep(4)
os.pullEvent = pullEvent
print("this will continue in 20 seconds")
sleep(.75)
print('right now please hold "Ctrl + T" To quit the install')
sleep(1)
print('you will not be able to quit this program in the 20 seconds')



sleep(20)
shell.run("clear")
os.pullEvent = os.pullEventRaw
term.setTextColor(colors.yellow)
print("CoopOS v"..version)
term.setTextColor(colors.white)
print('installing downloader')
sleep(2)
shell.run('wget https://raw.githubusercontent.com/CoopOS/CoopOS/'..versionMode..'/installerdown.lua installerdown.lua')
print('complete!')
