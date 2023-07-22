Set oShell = CreateObject("WScript.Shell")
strHomeFolder = oShell.ExpandEnvironmentStrings("%USERPROFILE%")
Set oShell = Nothing
Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & strHomeFolder + "\svelte-hometab\launchScripts\startHomeTab.bat" & Chr(34), 0
Set WshShell = Nothing