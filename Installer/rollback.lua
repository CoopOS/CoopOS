local termpullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw


--start rollback
term.setCursorPos(17, 15)
term.write("Rolling back changes")
