
jpackage \
  --type deb \
  --name EZDBLauncher \
  --app-version 1.0 \
  --input "/mnt/c/Users/lfyst/OneDrive/Desktop/edLauncher/bin/src" \
  --main-jar "EDL.jar" \
  --main-class "Main" \
  --icon "/mnt/c/Users/lfyst/OneDrive/Desktop/edLauncher/bin/EZDBLogo.png" \
  --linux-shortcut \
  --linux-menu-group "EZDB" \
  --description "EZDB Beta Launcher" \
  --vendor "LFYStch" \
  --dest "/mnt/c/Users/lfyst/OneDrive/Desktop/edLauncher/bin/debian" \
  --runtime-image /usr/lib/jvm/java-21-openjdk-amd64
cd /mnt/c/Users/lfyst/OneDrive/Desktop/edLauncher/bin/debian
mv ezdblauncher_1.0_amd64.deb 'EZDB Beta Launcher 1.0.deb'
