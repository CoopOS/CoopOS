local errorCode = "5328"
local errorDesc = '"modetype" not set correctly'
local reboot = true




sleep(5)
shell.run("clear")
os.pullEvent = os.pullEventRaw
term.setTextColor(colors.yellow)
print("CoopOS Installer")
sleep(6)
shell.run("clear")
print("CoopOS Installer E")
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Er")
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Err")
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Erro")
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.red)
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.white)
--end error animation
--start Check errors ... animation
sleep(6)
print("Checking Errors")
term.setTextColor(colors.red)
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.white)
print("Checking Errors.")
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.white)
print("Checking Errors..")
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.white)
print("Checking Errors...")
--end Check errors ... animation
term.setTextColor(colors.red)
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.white)

sleep(1.5)
print("Error Code: "..errorCode.."! "..errorDesc..".")
sleep(10)
term.setTextColor(colors.red)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.white)
print('See more on GitHub about code "'..errorCode..'" with The CoopOS Docs(Documentation)')
sleep(7.5)

term.setTextColor(colors.red)
sleep(0.15)
shell.run("clear")
print("CoopOS Installer Error")
term.setTextColor(colors.white)


fs.delete("startup.lua")
shell.run("wget https://raw.githubusercontent.com/CoopOS/CoopOS/beta/installerdown.lua installerdown.lua")


shell.run("pastebin get pnzdr8FB /CoopPlayzz/GitHub/CoopOS/finder")


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
  shell.run("clear")
  sleep(4)
  shell.run("installerdown")
end
