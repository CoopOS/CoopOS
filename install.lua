local tArgs= {...}

local modetype = beta

local reboot = false
local user = "CoopPlayzz"
local branch = modetype



for k,v in ipairs(tArgs) do
  if v == "-r" then
    reboot = true
  end
end

if modetype == beta then
  term.setTextColor(colors.red)
  print('WARNING:')
  print('YOU ARE USING A BETA, BETA"S OF THIS OS CAN BE VERY UNSTABLE USE AT OWN RISK!')
  term.setTextColor(colors.white)
  print('Bugs? Submit a issue on GitHub for the beta')
end



print("The options you have chose:")
sleep(2)
if reboot == true then
  print('reboot: true')
  else
  print('reboot: false')
end
sleep(.75)
if modetype == beta then
  print('mode type: beta')
elseif modetype == master then
  print('mode type: master')
else
  error('DOES NOT HAVE VALID MODE TYPE')
end






function installOS()
  
  print('???')
  --coming soon
end


sleep(6)
installOS()
print("Installation completed.(not relly just a test)")





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
