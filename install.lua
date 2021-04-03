local tArgs= {...}


local delete_Files = false
local reboot = false

local user = "CoopPlayzz"
local branch = 1



for k,v in ipairs(tArgs) do
  if v == "-d" then
    delete_Files = true
  end
  if v == "-r" then
    reboot = true
  end
end















wget("http://www.pastebin.com/raw/W5ZkVYSi",".gitget")
shell.run(".gitget "..user.." Coopplayzz "..branch.." CoopOS")
formatFS()
print("Installation completed.")
if reboot then os.reboot() end
