$LOCATIONOUT = "Enter the directory path (no files, only folders) to your exe output"
$LOCATIONIN = "Enter the directory path to your JAR "
$ICON = "Enter the path to your icon (yes files, must be .ico)"
$JARNAME = "Enter the name of ur JAR"
$EXENAME = "Enter the name of ur output EXE"
Remove-Item -Path "${LOCATIONIN}\*.exe" -Force
jpackage `
  --type exe `
  --name ${EXENAME} `
  --app-version 1.0 `
  --input "${LOCATIONIN}" `
  --main-jar "${JARNAME}" `
  --main-class "Main" `
  --icon "${ICON}" `
  --win-menu `
  --win-menu-group "${EXENAME}" `
  --win-shortcut `
  --win-shortcut-prompt `
  --description "..." `
  --vendor "..." `
  --dest "${LOCATIONOUT}"
