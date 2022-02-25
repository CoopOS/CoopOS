local termpullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
shell.run("wget")
shell.run("clear")
--start rollback
term.setCursorPos(17, 15)
term.write("Rolling back changes")
term.setCursorPos(19pp, 16)
