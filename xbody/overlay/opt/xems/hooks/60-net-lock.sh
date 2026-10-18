#!/bin/sh
# Network lock (owner, mod v21): stop what the vendor runs on the network now (their rc5 links are gone via
# remove.list, so they do not come back at boot) and close the network to everything but our protocol
# (/etc/init.d/xems-fw) — at once, also when the mod was installed while the machine runs (no reboot).
for s in sshd avahi-daemon rpcbind ofono neard; do
	[ -x /etc/init.d/$s ] && /etc/init.d/$s stop > /dev/null 2>&1
done
killall sshd avahi-daemon rpcbind ofonod neard > /dev/null 2>&1
/etc/init.d/xems-fw start && echo "net-lock: only XEMS on the network" || echo "net-lock: firewall not applied"
