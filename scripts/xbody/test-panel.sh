#!/bin/sh
# XEMS panel core on the host (protocol bytes, safety table, impulse / pause clock, bridge lines, cable shaper)
# + the cable proxy end to end over real sockets.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
mkdir -p "$REPO/build/xpanel"
g++ -std=gnu++98 -Wall -Werror -g -O0 -fsanitize=address,undefined "$REPO"/xbody/panel/core/*.cpp \
	"$REPO/xbody/panel/test/core_test.cpp" -o "$REPO/build/xpanel/core_test"
g++ -std=gnu++98 -Wall -Werror -O1 "$REPO"/xbody/panel/core/bytes.cpp "$REPO"/xbody/panel/core/xbcable.cpp \
	"$REPO/xbody/panel/proxy/xbproxy.cpp" -o "$REPO/build/xpanel/xbproxy-host"
python3 "$REPO/scripts/xbody/test-cable.py" "$REPO/build/xpanel/xbproxy-host"
"$REPO/build/xpanel/core_test"
g++ -std=gnu++98 -Wall -Werror -O1 "$REPO"/xbody/panel/core/bytes.cpp "$REPO"/xbody/panel/core/xbcable.cpp \
	"$REPO/xbody/panel/proxy/xbproxy.cpp" -o "$REPO/build/xpanel/xbproxy-host"
python3 "$REPO/scripts/xbody/test-cable.py" "$REPO/build/xpanel/xbproxy-host"
