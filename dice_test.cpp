#include <string>
#include <iostream>
#include "Diceware.h"

int 
main(int argc, char **argv)
{
    Diceware diceware;
    string word;

    word = diceware.getWord("11111");
    cout << word;

    return 0;
}
