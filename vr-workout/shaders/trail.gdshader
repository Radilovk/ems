// The light trail behind a fist (or a knee / foot): faint while moving slowly, bright white-hot once the limb is fast
// enough to break a sphere — you see the moment your strike counts. Vertex colour carries the fade along the trail.
shader_type spatial;
render_mode unshaded, blend_add, depth_draw_never, cull_disabled, shadows_disabled;

void fragment() {
	float across = 1.0 - abs(UV.y - 0.5) * 2.0;
	float a = COLOR.a * pow(across, 1.6);
	ALBEDO = COLOR.rgb * a;
	ALPHA = a;
}
