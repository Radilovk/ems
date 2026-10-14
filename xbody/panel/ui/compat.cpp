// The card's libstdc++ is 6.0.20 (gcc 4.9); gcc 13's headers call helpers added later (GLIBCXX_3.4.29). Defined here,
// so the binary needs nothing newer than the card has (readelf -V: GLIBCXX ≤ 3.4.20). ARM build only.
#include <new>

namespace std {
void __throw_bad_array_new_length() { throw std::bad_alloc(); }
}
