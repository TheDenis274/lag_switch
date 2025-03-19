#Requires AutoHotkey v2.0

shell := ComObject("WScript.Shell")

![:: {
	active_window := WinGetID("A")
	shell.Run("ipconfig /release", 0)
	WinActivate(active_window)
	Sleep(1000)
	shell.Run("ipconfig /renew", 0)
	WinActivate(active_window)
}

!]:: {
	active_window := WinGetID("A")
	shell.Run("ipconfig /release", 0)
	WinActivate(active_window)
	Sleep(3000)
	shell.Run("ipconfig /renew", 0)
	WinActivate(active_window)
}