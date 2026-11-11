## The owner's case (2026-11-11 recordings): the game thinks the player stands at 1.64 m, the headset never goes above
## 1.57 m. Standing still must still be taken as standing tall (the zero pose), a knee bend must calibrate, and
## standing still afterwards (head a little below its best) must keep both feet on the floor (the legs hung in the air).
##   godot --headless --path vr-workout --script res://test/stand_test.gd
extends SceneTree

const LEFT := Vector3(-1, 0, 0)
const FWD := Vector3(0, 0, -1)
var pads := PadLegs.new()
var sensors := [
	{"id": 0, "leg": "l", "yaw": 1.1, "mount": 0.4},
	{"id": 1, "leg": "r", "yaw": -2.3, "mount": 2.9},
]


func _to_sensor(yaw: float) -> Basis:
	var c0 := Basis(Vector3(1, 0, 0), Vector3(0, 0, 1), Vector3(0, -1, 0)).transposed()
	return Basis(Vector3(0, 0, 1), yaw) * c0


func _board(s: Dictionary) -> Basis:
	var out := LEFT if s.leg == "l" else -LEFT
	var x := Vector3.UP.rotated(out, s.mount)
	return Basis(x, out.cross(x), out)


func _run(secs: float, head_h: float, g: Basis) -> Dictionary:
	var L := {}
	for i in int(secs * 72.0):
		for s in sensors:
			var q := Quaternion(_to_sensor(s.yaw) * g * _board(s))
			if q.w < 0.0:
				q = -q
			pads.sim[s.id] = [q.x, q.y, q.z, q.w]
		pads.poll(1.0 / 72.0, head_h, 1.64, FWD)
		L = pads.limbs(Vector3(0, head_h, 0), FWD, 1.64, 0.0, 1.0 / 72.0)
	return L


func _initialize() -> void:
	var I := Basis.IDENTITY
	_run(1.6, 1.57, I)
	var ok1 := pads.status == "bend"
	print("stand_test: %s standing at 1.57 m with the game's 1.64 m → %s (seen %.2f m)" % ["ok  " if ok1 else "FAIL", pads.status, pads.stand_seen])
	_run(0.5, 1.40, Basis(LEFT, deg_to_rad(25.0)))
	var L := _run(2.0, 1.55, I)
	var g: Dictionary = L.get("ground", {})
	var ok2: bool = pads.status == "ready" and g.get("l", false) and g.get("r", false)
	print("stand_test: %s standing still, head 2 cm low → %s, feet on the floor %s" % ["ok  " if ok2 else "FAIL", pads.status, g])
	var ok := ok1 and ok2
	print("stand_test: %s" % ("PASS" if ok else "FAIL"))
	quit(0 if ok else 1)
