export LD_LIBRARY_PATH=.
g++ -g -shared -I. Diceware.cpp -o libDiceware.so
g++ -g -shared -I. Diceware-array.cpp -o libDicewarearray.so
g++ -g -I. -L. dice_test.cpp -o dice_test -lDiceware
