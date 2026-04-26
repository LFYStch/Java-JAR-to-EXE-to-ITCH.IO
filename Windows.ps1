
$LOCATIONOUT = Read-Host "Enter the directory path (no files, only folders) to your EXE output"
$LOCATIONIN  = Read-Host "Enter the directory path to your JAR"
$ICON        = Read-Host "Enter the path to your icon (.ico)"
$JARNAME     = Read-Host "Enter the name of your JAR (ex: EDL.jar)"
$EXENAME     = Read-Host "Enter the name of your output EXE (no spaces recommended)"

Remove-Item -Path "$LOCATIONOUT\*.exe" -Force -ErrorAction SilentlyContinue

jpackage `
  --type exe `
  --name "$EXENAME" `
  --app-version 1.0 `
  --input "$LOCATIONIN" `
  --main-jar "$JARNAME" `
  --main-class "Main" `
  --icon "$ICON" `
  --win-menu `
  --win-menu-group "$EXENAME" `
  --win-shortcut `
  --win-shortcut-prompt `
  --description "..." `
  --vendor "..." `
  --dest "$LOCATIONOUT"
