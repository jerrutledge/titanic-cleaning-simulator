del /q build\web\*
"%USERPROFILE%\Downloads\Godot_v4.3-stable_win64.exe\Godot_v4.3-stable_win64.exe"  --headless --verbose --export-release "Web" ./build/web/index.html
copy titanic.png build\web\titanic.png
"%USERPROFILE%\AppData\Roaming\itch\apps\butler\butler.exe" push "build\web" cliffraven/titanic-cleaning-simulator:html5
echo "success"