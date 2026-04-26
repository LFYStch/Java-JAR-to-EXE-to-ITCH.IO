clear
cd bin
pushd src
echo "==Starting JAR Packaging=="
echo "..."
jar cfm EDL.jar MANIFEST.MF .
echo "==JAR Package Complete=="
popd
pushd packaging
echo "==Starting Windows Packaging=="
echo "..."
powershell -ExecutionPolicy Bypass -File windows.ps1
echo "==Completed=="
echo "==Starting Debian Packaging=="
echo "..."
wsl sh debian.sh
echo "==Completed=="
popd
echo "===Uploading to Itch.IO==="
powershell -ExecutionPolicy Bypass -File butler.ps1
echo "=You are Done!="
