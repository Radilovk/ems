// Small shared helpers for the panel core (C++98, no Qt: built for the unit and for host tests).
#pragma once
#include <string>
#include <vector>

typedef std::vector<unsigned char> Bytes;

std::string toHex(const Bytes &b);
bool fromHex(const std::string &s, Bytes &out);
