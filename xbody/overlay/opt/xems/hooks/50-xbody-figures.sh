#!/bin/sh
# XBody's own screen back to its original body pictures (owner, mod v17: "our figures don't work well there").
# Mod v16 pointed XBody's `pixmaps_directory` at a folder with the XEMS figures: the key goes, XBody reads its binary
# again from its next start; the folder and the choice file go too.
CONF=/opt/xbody/xbody.conf
[ -f "$CONF" ] && grep -q '^pixmaps_directory=' "$CONF" && sed -i '/^pixmaps_directory=/d' "$CONF"
rm -rf /opt/xems/xbody-pixmaps /opt/xems/xbody-pixmaps.new /opt/xems/xbody-figures /opt/xems/xbody-body
rm -f /opt/xems/bin/xems-figures.sh
sync
echo "xbody-figures: XBody's own figures"
