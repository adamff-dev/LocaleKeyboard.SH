echo "                                      __    "
echo "  |  _  _ _ | _ |/ _   |_  _  _  __| (_ |_| "
echo "  |_(_)(_(_||(/_|\(/_\/|_)(_)(_||(_|o__)| | "
echo "                     /                      "
echo "                          by BlueArduino20  "
echo "------------------------------------------"
echo "  Select your locale:"
echo "------------------------------------------"
echo "  1. en_US     5. be_BE     9. da_DK"
echo "  2. en_UK     6. es_ES     10. pt_PT"
echo "  3. de_DE     7. fi_FI     11. tr_TR"
echo "  4. fr_FR     8. cz_CZ     12. it_IT"
echo "------------------------------------------"
echo "  A. Update localess from the internet"
echo "------------------------------------------"
echo "  B. Go to Nurrl's GitHub repository"
echo "------------------------------------------"
echo "  C. Go to the repository of this project"
echo "------------------------------------------"

echo -n "Write your number -> "
read LOC

if [ $LOC == A ]; then
	cd ./locales
	sudo chmod +x Update_Locales.sh
	./Update_Locales.sh
	exit
elif [ $LOC == B ]; then
	xdg-open https://github.com/Nurrl/LocaleKeyboard.js
	exit
elif [ $LOC == C ]; then
	xdg-open https://github.com/BlueArduino20
	exit
elif [ $LOC == 1 ]; then
	LOCALE=en_US
elif [ $LOC == 2 ]; then
	LOCALE=en_UK
elif [ $LOC == 3 ]; then
	LOCALE=de_DE
elif [ $LOC == 4 ]; then
	LOCALE=fr_FR
elif [ $LOC == 5 ]; then
	LOCALE=be_BE
elif [ $LOC == 6 ]; then
	LOCALE=es_ES
elif [ $LOC == 7 ]; then
	LOCALE=fi_FI
elif [ $LOC == 8 ]; then
	LOCALE=cz_CZ
elif [ $LOC == 9 ]; then
	LOCALE=da_DK
elif [ $LOC == 10 ]; then
	LOCALE=pt_PT
elif [ $LOC == 11 ]; then
	LOCALE=tr_TR
elif [ $LOC == 12 ]; then
	LOCALE=it_IT
fi

rm Keyboard.cpp
cat ./src/Keyboard1.cpp ./locales/$LOCALE.lang ./src/Keyboard2.cpp>> Keyboard.cpp
clear


SIZE=$(du -sb Keyboard.cpp | awk '{ print $1 }')
if ((SIZE<5200)) ; then 
	rm Keyboard.cpp
	echo "Something went wrong. Maybe you've chosen a wrong option. Try it again:"; 
	./LocaleKeyboard.SH 
else 
	echo "Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder"; 
	exit
fi

