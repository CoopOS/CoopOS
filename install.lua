local termpullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw

if fs.exists("startup.lua") then
  fs.delete("startup.lua")
end
if fs.exists("reboot.lua") then
  fs.delete("reboot.lua")
end
sleep(6)
local tArgs= {...}
local modetype = "ur8932y8r3786r47836578432hv47823658vthn43257v64789j5t7548n86t7n64b57tb723495743826bn5789"
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS Installer')
term.setTextColor(colors.white)
local reboot = false
local user = "CoopPlayzz"
local branch = modetype
local version = ("1.0 §l"..modetype.."")


for k,v in ipairs(tArgs) do
  if v == "-r" then
    reboot = true
  end
end
sleep(3)
print('LOADING...')
sleep(2)
if modetype == "beta" then
  shell.run("clear")
  term.setTextColor(colors.yellow)
  print('CoopOS Installer')
  sleep(.75)
  term.setTextColor(colors.red)
  print('WARNING:')
  sleep(.75)
  os.pullEvent = termpullEvent
  print('YOU ARE USING A BETA, BETA"S OF THIS OS CAN BE VERY UNSTABLE USE AT OWN RISK!')
  print('HOLD "Ctrl + T" TO QUIT INSTALLING THE BETA')
  print('IF YOU WANT TO INSTALL THE BETA THEN WAIT 15 SECONDS')
  sleep(15)
  os.pullEvent = os.pullEventRaw
  shell.run("clear")
  
  term.setTextColor(colors.yellow)
  print('CoopOS Installer')
  print('Now Continuing')
  term.setTextColor(colors.white)
  sleep(2)
  print('Bugs? Submit a issue on GitHub for the beta')
  sleep(8)
else
  os.pullEvent = os.pullEventRaw
  shell.run("clear")
  term.setTextColor(colors.yellow)
  print('CoopOS Installer')
  term.setTextColor(colors.white)
  sleep(8)
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
  shell.run("clear")
  sleep(0.75)
  term.setTextColor(colors.yellow)
  print('CoopOS Installer')
  term.setTextColor(colors.white)
  --start error mode
  if fs.exists("startup.lua") then
    fs.delete("startup.lua")
  end
  shell.run('wget https://raw.githubusercontent.com/CoopOS/CoopOS/beta/ErrorCodeFiles/Code5328.lua startup.lua')
  sleep(6)
  shell.run("clear")
  term.setTextColor(colors.yellow)
  print('CoopOS Installer')
  term.setTextColor(colors.white)
  os.reboot()
end
print('version: v'..version..'')

sleep(9.25)
shell.run("clear")
sleep(.75)
term.setTextColor(colors.yellow)
print('CoopOS Installer')
term.setTextColor(colors.white)
print('Getting CoopOS Installer Startup')
sleep(6)
print("Downloading...")
if fs.exists("installerdown.lua") then
  fs.delete("installerdown.lua")
end
shell.run("wget https://raw.githubusercontent.com/CoopOS/CoopOS/"..modetype.."/Installer/startup.lua startup.lua")
sleep(.75)
print('Got CoopOS Installer Startup')
sleep(2)

fs.delete("installerdown.lua")


shell.run('label set "§r§6Coop§lOS§r v'..version..'"')
sleep(.5)
if reboot then
  shell.run("clear")
  print('SYSTEM REBOOTING IN 5')
  sleep(1)
  shell.run("clear")
  print('SYSTEM REBOOTING IN 4')
  sleep(1)
  shell.run("clear")
  print('SYSTEM REBOOTING IN 3')
  sleep(1)
  shell.run("clear")
  print('SYSTEM REBOOTING IN 2')
  sleep(1)
  shell.run("clear")
  print('SYSTEM REBOOTING IN 1')
  sleep(1)
  --start animation
  shell.run("clear")
  print('SYSTEM REBOOTING IN')
  sleep(.1)
  shell.run("clear")
  print('SYSTEM REBOOTING I')
  sleep(.1)
  shell.run("clear")
  print('SYSTEM REBOOTING')
  sleep(.1)
  shell.run("clear")
  print('SYSTEMREBOOTING')
  sleep(.1)
  shell.run("clear")
  print('SYSTEREBOOTING')
  sleep(.1)
  shell.run("clear")
  print('SYSTREBOOTING')
  sleep(.1)
  shell.run("clear")
  print('SYSREBOOTING')
  sleep(.1)
  shell.run("clear")
  print('SYREBOOTING')
  sleep(.1)
  shell.run("clear")
  print('SREBOOTING')
  sleep(.1)
  shell.run("clear")
  --end animation
  print("REBOOTING")
  sleep(.89)
  --start "..." animation
  sleep(.3)
  shell.run("clear")
  print('REBOOTING.')
  sleep(.3)
  shell.run("clear")
  print('REBOOTING..')
  sleep(.3)
  shell.run("clear")
  print('REBOOTING...')
  --end of "..." animation
  sleep(3)
  os.reboot()
end
