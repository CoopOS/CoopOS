os.pullEvent = os.pullEventRaw
local tArgs= {...}
shell.run("clear")

local installerRunAfterDownload = false
local deleteFileAfterDownload = false

local versionReleaseMode = "beta"

for k,v in ipairs(tArgs) do
  if v == "-d" then
    deleteFileAfterDownload = true
  end
  if v == "-run" then
    installerRunAfterDownload = true
    deleteFileAfterDownload = false
  end
end

--start animation
sleep(2)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 15 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 14 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 12 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 11 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 19 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 9 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 7 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 6 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 5 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 4 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 3 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file. Estamated time: 2 seconds')
shell.run("clear")
sleep(1)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system files for this file1')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system file1')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system1')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core system1')
shell.run("clear")
sleep(0.15)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading core1')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('Loading cor1')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('loading co1')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('loading c0')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('loading installer')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('nloading installer')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('wnloading installer')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('ownloading installer')
shell.run("clear")
sleep(0.10)
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('downloading installer')
shell.run("clear")





















sleep(3)
if fs.exists("install.lua") then
  fs.delete("install.lua")
end
sleep(.75)
if fs.exists("startup.lua") then
  fs.delete("startup.lua")
end
sleep(2)
shell.run("wget https://raw.githubusercontent.com/CoopPlayzz/CoopOS/"..versionReleaseMode.."/install.lua install.lua")
shell.run("clear")
term.setTextColor(colors.yellow)
print('CoopOS "Installer" Downloader')
term.setTextColor(colors.white)
print('installer downloaded')
sleep(3)



if deleteFileAfterDownload == true then
  fs.delete("installerdown.lua")
end

if installerRunAfterDownload == true then
  print('running installer')
  sleep(2)
  shell.run("clear")
  shell.run("install -r")
elseif installerRunAfterDownload == false then
  shell.run("wget https://raw.githubusercontent.com/CoopPlayzz/CoopOS/beta/startupToInstaller.lua startup.lua")
  sleep(2)
  shell.run("clear")
  term.setTextColor(colors.yellow)
  print('CoopOS "Installer" Downloader')
  term.setTextColor(colors.white)
  print('once you reboot you will start installing CoopOS')
end
