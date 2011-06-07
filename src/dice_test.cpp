#include <iostream>
#include <cstdlib>
#include "Diceware.h"

int 
main(int argc, char **argv)
{
    Diceware diceware;
    char *word;
    int roll = atoi(argv[1]);

    word = diceware.getWord(roll);
    cout << word << "\n";

    return 0;
}
