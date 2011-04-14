/*
 * Diceware library for eventual use 
 * on an Arduino.
 *
 * Doug Prostko
 *
 */
#ifndef Diceware_h
#define Diceware_h

// #include "WProgram.h"
#include <map>
#include <string>

using namespace std;

class Diceware
{
    public:
        Diceware();
        string getWord(string roll);
    private:
        string _roll;
};

#endif
