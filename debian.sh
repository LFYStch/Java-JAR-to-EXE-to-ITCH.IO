#!/bin/bash

read -p "Enter the directory path to your DEB output folder: " LOCATIONOUT
read -p "Enter the directory path to your JAR folder: " LOCATIONIN
read -p "Enter the path to your icon (.png): " ICON
read -p "Enter the name of your JAR (ex: EDL.jar): " JARNAME
read -p "Enter the name of your DEB package (no spaces recommended): " PKGNAME

echo "Cleaning old DEBs..."
rm -f "$LOCATIONOUT"/*.deb 2>/dev/null


echo "Running jpackage..."
jpackage \
  --type deb \
  --name "$PKGNAME" \
  --app-version 1.0 \
  --input "$LOCATIONIN" \
  --main-jar "$JARNAME" \
  --main-class "Main" \
  --icon "$ICON" \
  --linux-shortcut \
  --linux-menu-group "$PKGNAME" \
  --description "..." \
  --vendor "..." \
  --runtime-image /usr/lib/jvm/java-21-openjdk-amd64 \
  --dest "$LOCATIONOUT"

echo "=== Packaging Complete ==="
