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
#include <string>
#include <map>

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
