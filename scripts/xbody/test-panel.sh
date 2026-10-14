#!/bin/sh
# XEMS panel core on the host (protocol bytes, safety table, impulse / pause clock, bridge lines) + the ARM build.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
mkdir -p "$REPO/build/xpanel"
g++ -std=gnu++98 -Wall -Werror -g -O0 -fsanitize=address,undefined "$REPO"/xbody/panel/core/*.cpp \
	"$REPO/xbody/panel/test/core_test.cpp" -o "$REPO/build/xpanel/core_test"
"$REPO/build/xpanel/core_test"
