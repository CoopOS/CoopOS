local tArgs= {...}

local modetype = beta

local deleteFiles = false
local reboot = false
local user = "CoopPlayzz"
local branch = modetype



for k,v in ipairs(tArgs) do
  if v == "-d" then
    deleteFiles = true
  end
  if v == "-r" then
    reboot = true
  end
end






print("OS does not install yet it's in dev mode right now. The following things do not do anything but they will soon so don't worry. You have chose:")
sleep(2)
if deleteFiles == true then
  print('delete files: true')
  else
  print('delete files: false')
end
sleep(.75)
if reboot == true then
  print('reboot: true')
  else
  print('reboot: false')
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
