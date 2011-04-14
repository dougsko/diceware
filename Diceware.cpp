/*
 * Diceware library for eventual use 
 * on an Arduino.
 *
 * Doug Prostko
 *
 */

#include <string>
#include "Diceware.h"

using namespace std;

Diceware::Diceware()
{
}

string Diceware::getWord(string roll)
{
    _roll = roll;

    string word;
    map<string, string> m;
    
    m["11111"] = "foo"; 

    return m[_roll];
}
