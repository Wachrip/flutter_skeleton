#!/bin/sh

find . -name "*.orig" -type f -delete
flutter clean
flutter pub upgrade
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
#sh "scripts/localisation_updater.sh"
#sh "scripts/format_dart.sh"

