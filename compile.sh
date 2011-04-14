g++ -g -shared -I. Diceware.cpp -o libDiceware.so
g++ -g -I. -L. dice_test.cpp -o dice_test -lDiceware
