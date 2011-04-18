/*
 * Diceware library for eventual use 
 * on an Arduino.
 *
 * Doug Prostko
 *
 */
#ifndef Diceware_h
#define Diceware_h

#include <string>
// #include "WProgram.h"

using namespace std;

class Diceware
{
    public:
        Diceware();
        string getWord(int roll);
    private:
        int _roll;
};

#endif
