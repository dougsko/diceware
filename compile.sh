export LD_LIBRARY_PATH=lib
g++ -g -shared -Ilib lib/Diceware.cpp -o lib/libDiceware.so
g++ -g -Ilib -Llib src/dice_test.cpp -o bin/dice_test -lDiceware
