local tArgs= {...}
local pullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
local modetype = "beta"


local reboot = false
local user = "CoopPlayzz"
local branch = modetype
local version = "1.0 BETA"


for k,v in ipairs(tArgs) do
  if v == "-r" then
    reboot = true
  end
end
sleep(3)
print('LOADING...')
sleep(3)
if modetype == "beta" then
  term.setTextColor(colors.red)
  print('WARNING:')
  sleep(.75)
  os.pullEvent = pullEvent
  print('YOU ARE USING A BETA, BETA"S OF THIS OS CAN BE VERY UNSTABLE USE AT OWN RISK!')
  print('HOLD "Ctrl + T" TO QUIT INSTALLING THE BETA')
  print('IF YOU WANT TO INSTALL THE BETA THEN WAIT 15 SECONDS')
  sleep(15)
  os.pullEvent = os.pullEventRaw
  term.setTextColor(colors.yellow)
  print('Now Continuing')
  term.setTextColor(colors.white)
  sleep(2)
  print('Bugs? Submit a issue on GitHub for the beta')
  sleep(8)
else
  os.pullEvent = os.pullEventRaw
end


print("The options you have chosen:")
sleep(2)
if reboot == true then
  print('reboot: true')
  else
  print('reboot: false')
end
sleep(.75)
if modetype == "beta" then
  print('mode type: beta')
elseif modetype == "master" then
  print('mode type: master')
else
  error('DOES NOT HAVE VALID MODE TYPE')
end
print('version: v'..version..'')

sleep(10)


print('Getting CoopOS Installer Startup')
sleep(6)
print("Downloading...")
if fs.exists("startup.lua") then
  fs.delete("startup.lua")
end
shell.run("wget https://raw.githubusercontent.com/CoopPlayzz/CoopOS/"..modetype.."/Installer/startup.lua startup.lua")

sleep(6)
print('Got CoopOS Installer Startup')
sleep(2)

fs.delete("installerdown.lua")


shell.run('label set "CoopOSv'..version..'"')
sleep(2)
if reboot then
  term.clear()
  print('SYSTEM REBOOTING IN 5')
  sleep(1)
  term.clear()
  print('SYSTEM REBOOTING IN 4')
  sleep(1)
  term.clear()
  print('SYSTEM REBOOTING IN 3')
  sleep(1)
  term.clear()
  print('SYSTEM REBOOTING IN 2')
  sleep(1)
  term.clear()
  print('SYSTEM REBOOTING IN 1')
  sleep(1)
  --start animation
  term.clear()
  print('SYSTEM REBOOTING IN')
  sleep(.1)
  term.clear()
  print('SYSTEM REBOOTING I')
  sleep(.1)
  term.clear()
  print('SYSTEM REBOOTING')
  sleep(.1)
  term.clear()
  print('SYSTEMREBOOTING')
  sleep(.1)
  term.clear()
  print('SYSTEREBOOTING')
  sleep(.1)
  term.clear()
  print('SYSTREBOOTING')
  sleep(.1)
  term.clear()
  print('SYSREBOOTING')
  sleep(.1)
  term.clear()
  print('SYREBOOTING')
  sleep(.1)
  term.clear()
  print('SREBOOTING')
  sleep(.1)
  term.clear()
  --end animation
  print("REBOOTING")
  sleep(3)
  os.reboot()
end
