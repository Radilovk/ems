#!/bin/sh
# XBody's OWN training screen with the XEMS body figures (owner) — busybox 1.22 ash.
#   xems-figures.sh female|male|original     (no argument: the saved choice, female by default)
# XBody reads its pictures from the folder in its config key `pixmaps_directory` (XbodyConfigDefaults: "useful for
# testing new design graphics"). We export all of its own pictures there (xems-panel --export-pixmaps, from its
# binary), put ours (opt/xems/xbody-body/<sex>/Body*.png, scripts/xbody/gen-xbody-body.py) in place of the body ones
# and point the key at the folder. "original": the key goes, XBody reads its binary again. Applies when XBody starts.
D=${XEMS_DIR:-/opt/xems}
XB=${XBODY_DIR:-/opt/xbody}
P=$D/xbody-pixmaps
CONF=$XB/xbody.conf
CH=$1
[ -n "$CH" ] || CH=$(cat "$D/xbody-figures" 2>/dev/null)
[ -n "$CH" ] || CH=female
case "$CH" in female|male|original) ;; *) echo "xems-figures: unknown '$CH'"; exit 2 ;; esac
echo "$CH" > "$D/xbody-figures"
[ -f "$CONF" ] || : > "$CONF"
if [ "$CH" = original ]; then
	sed -i '/^pixmaps_directory=/d' "$CONF"
	sync
	echo "xems-figures: XBody's own figures"
	exit 0
fi
[ -f "$D/xbody-body/$CH/BodyNormal.png" ] || { echo "xems-figures: no $CH figures"; exit 1; }
rm -rf "$P.new"
mkdir -p "$P.new"
if ! "$D/bin/xems-panel" --export-pixmaps "$P.new" "$XB/xbody"; then
	rm -rf "$P.new"
	echo "xems-figures: export failed — XBody keeps its own figures"
	exit 1
fi
cp "$D/xbody-body/$CH/"*.png "$P.new/" || { rm -rf "$P.new"; exit 1; }
rm -rf "$P"
mv "$P.new" "$P"
if grep -q '^pixmaps_directory=' "$CONF"; then
	sed -i "s|^pixmaps_directory=.*|pixmaps_directory=$P/|" "$CONF"
else
	# the unit's file may end without a newline ("online=0"): never glue our line onto its last one
	[ -s "$CONF" ] && [ -n "$(tail -c 1 "$CONF")" ] && echo >> "$CONF"
	echo "pixmaps_directory=$P/" >> "$CONF"
fi
sync
echo "xems-figures: XEMS $CH figures in $P"
