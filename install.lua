local tArgs= {...}

local modetype = beta

local deleteFiles = false
local reboot = false
local rebootCountdown = 5
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
print('delete files is '..deleteFiles)
sleep(.75)
print('reboot is '..reboot)



sleep(6)




wget("http://www.pastebin.com/raw/W5ZkVYSi",".gitget")
shell.run(".gitget "..user.." CoopOS "..branch.." CoopOS")
installOS()
print("Installation completed.(not relly just a test)")


if reboot then
  print('SYSTEM REBOOTING IN '..rebootCountdown)
  sleep(1)
  rebootCountdown = rebootCountdown - 1
  print('SYSTEM REBOOTING IN '..rebootCountdown)
  sleep(1)
  rebootCountdown = rebootCountdown - 1
  print('SYSTEM REBOOTING IN '..rebootCountdown)
  sleep(1)
  rebootCountdown = rebootCountdown - 1
  print('SYSTEM REBOOTING IN '..rebootCountdown)
  sleep(1)
  rebootCountdown = rebootCountdown - 1
  sleep(1)
  print("REBOOTING")
  sleep(3)
  os.reboot()
end
