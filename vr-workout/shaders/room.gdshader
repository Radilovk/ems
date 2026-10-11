// Ground-projected panorama: the 360° photo is painted onto a room-sized shell (floor, walls, ceiling) as seen
// from the point it was shot from. The floor then sits under your feet with real depth and parallax, instead of
// an infinitely far sky.
shader_type spatial;
render_mode unshaded, cull_front, depth_draw_opaque, shadows_disabled, fog_disabled;

uniform sampler2D pano : source_color, filter_linear, repeat_enable;
uniform vec3 capture = vec3(0.0, 1.55, 0.0);   // where the camera stood (floor = 0)
uniform float yaw = 0.0;                         // turn the room (0..1)
uniform float exposure = 1.0;
varying vec3 world_pos;

void vertex() {
	world_pos = (MODEL_MATRIX * vec4(VERTEX, 1.0)).xyz;
}

void fragment() {
	vec3 d = normalize(world_pos - capture);
	float u = fract(atan(d.x, -d.z) / (2.0 * PI) + 0.5 + yaw);
	float v = acos(clamp(d.y, -1.0, 1.0)) / PI;
	ALBEDO = texture(pano, vec2(u, v)).rgb * exposure;
}
