Remove-Item -Path "C:\Users\lfyst\OneDrive\Desktop\edLauncher\bin\windows\*.exe" -Force
jpackage `
  --type exe `
  --name EZDBLauncher `
  --app-version 1.0 `
  --input "C:\Users\lfyst\OneDrive\Desktop\edLauncher\bin\src" `
  --main-jar "EDL.jar" `
  --main-class "Main" `
  --icon "C:\Users\lfyst\OneDrive\Desktop\edLauncher\bin\hjh.ico" `
  --win-menu `
  --win-menu-group "EZDB" `
  --win-shortcut `
  --win-shortcut-prompt `
  --description "EZDB Beta Launcher" `
  --vendor "LFYStch" `
  --dest "C:\Users\lfyst\OneDrive\Desktop\edLauncher\bin\windows"

Rename-Item `
  -Path "C:\Users\lfyst\OneDrive\Desktop\edLauncher\bin\windows\EZDBLauncher-1.0.exe" `
  -NewName "EZ Demon Blood Beta Launcher 1.0.exe"

