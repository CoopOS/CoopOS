-- this is for the installer when people reboot it will start the installer
term.clear()
print('INSTALLING CoopOS')
sleep(4)
shell.run("install -r")
