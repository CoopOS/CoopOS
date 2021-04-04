os.pullEvent = os.pullEventRaw
local tArgs= {...}

local installerRunAfterDownload = false
local deleteFileAfterDownload = false

local versionReleaseMode = beta

for k,v in ipairs(tArgs) do
  if v == "-d" then
    deleteFileAfterDownload = true
  end
  if v == "-run" then
    installerRunAfterDownload = true
    deleteFileAfterDownload = false
  end
end


sleep(2)
print('loading...')
print('Loading core system files for this file. Estamated time: 15 seconds usually')



sleep(13)
print("downloading installer")
sleep(3)
fs.delete("install.lua")
sleep(.75)
fs.delete("startup.lua")
sleep(2)
shell.run("wget https://raw.githubusercontent.com/CoopPlayzz/CoopOS/"..versionReleaseMode.."/install.lua install.lua")
print('installer downloaded')
sleep(3)



if deleteFileAfterDownload == true then
  fs.delete("installerdown.lua")
end

if installerRunAfterDownload == true then
  print('running installer')
  shell.run("install -r")
end
