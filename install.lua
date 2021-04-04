local tArgs= {...}

local modetype = "beta"

local reboot = false
local user = "CoopPlayzz"
local branch = modetype



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
  print('YOU ARE USING A BETA, BETA"S OF THIS OS CAN BE VERY UNSTABLE USE AT OWN RISK!')
  term.setTextColor(colors.white)
  sleep(4)
  print('Bugs? Submit a issue on GitHub for the beta')
  sleep(8)
end



print("The options you have chose:")
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


sleep(10)


print('Getting CoopOS Installer Startup')
sleep(6)
print("Downloading...")
fs.delete("startup.lua")
shell.run("wget https://raw.githubusercontent.com/CoopPlayzz/CoopOS/beta/Installer/startup.lua startup.lua")

sleep(6)
print('Got CoopOS Installer Startup')




shell.run("label set §rCoopOS")

if reboot then
  print('SYSTEM REBOOTING IN 5')
  sleep(1)
  print('SYSTEM REBOOTING IN 4')
  sleep(1)
  print('SYSTEM REBOOTING IN 3')
  sleep(1)
  print('SYSTEM REBOOTING IN 2')
  sleep(1)
  print('SYSTEM REBOOTING IN 1')
  sleep(1)
  print("REBOOTING")
  sleep(3)
  os.reboot()
end
