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
echo "  A. Update locales from the internet"
echo "------------------------------------------"
echo "  B. Go to Nurrl's GitHub repository"
echo "------------------------------------------"
echo "  C. Go to the repository of this project"
echo "------------------------------------------"

echo -n "Write your locale number -> "
read locale


if [ $locale == 1 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/en_US.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 2 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/en_UK.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 3 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/de_DE.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 4 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/fr_FR.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 5 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/be_BE.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 6 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/es_ES.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 7 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/fi_FI.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 8 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/cz_CZ.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 9 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/da_DK.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 10 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/pt_PT.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 11 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/tr_TR.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == 12 ]; then
	rm Keyboard.cpp
	cat ./src/Keyboard1.cpp ./locales/it_IT.lang ./src/Keyboard2.cpp >> Keyboard.cpp
	clear
	echo Done! Copy the "Keyboard.cpp" file into your "Arduino/libraries/Keyboard/src" folder
	exit

elif [ $locale == A ]; then
	cd ./locales
	./Update_Locales.sh
	exit

elif [ $locale == B ]; then
	xdg-open https://github.com/Nurrl/LocaleKeyboard.js
	exit

elif [ $locale == C ]; then
	xdg-open https://github.com/BlueArduino20
	exit

elif [ $locale == a ]; then
	cd ./locales
	./Update_Locales.sh
	exit

elif [ $locale == b ]; then
	xdg-open https://github.com/Nurrl/LocaleKeyboard.js
	exit

elif [ $locale == c ]; then
	xdg-open https://github.com/BlueArduino20
	exit

else
echo "You haven't selected anything!"
exit

fi
fi
fi
