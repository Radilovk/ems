// Ground-projected panorama: the 360° photo is painted onto a room-sized shell (floor, walls, ceiling) as seen
// from the point it was shot from. The floor then sits under your feet with real depth and parallax, instead of
// an infinitely far sky. Worked out in the shell's own space, so the photo moves and turns with the room (the
// player's place in the room) and is exact where it was shot from — the game puts the player there.
shader_type spatial;
render_mode unshaded, cull_front, depth_draw_opaque, shadows_disabled, fog_disabled;

uniform sampler2D pano : source_color, filter_linear, repeat_enable;
uniform vec3 capture = vec3(0.0, 0.0, 0.0);    // where the camera stood, in the shell's own space
uniform float yaw = 0.0;                         // turn the room (0..1)
uniform float exposure = 1.0;
uniform bool hdr = false;                        // a float photo: expose and tone-map it here
// The windows: where the mask is white (the glass) the shell is cut away, and the sky behind it shows the landscape
// (view_sky.gdshader) — infinitely far, so in the headset it is truly out there, behind the pane.
uniform bool view_on = false;
uniform sampler2D windows : filter_linear, repeat_enable, hint_default_black;
varying vec3 local_pos;

void vertex() {
	local_pos = VERTEX;
}

void fragment() {
	vec3 d = normalize(local_pos - capture);
	float u = fract(atan(d.x, -d.z) / (2.0 * PI) + 0.5 + yaw);
	float v = acos(clamp(d.y, -1.0, 1.0)) / PI;
	vec3 c = texture(pano, vec2(u, v)).rgb * exposure;
	if (hdr) {
		c = clamp((c * (2.51 * c + 0.03)) / (c * (2.43 * c + 0.59) + 0.14), 0.0, 1.0);   // ACES fit
	}
	if (view_on) {
		ALPHA = 1.0 - texture(windows, vec2(u, v)).r;
		ALPHA_SCISSOR_THRESHOLD = 0.5;
	}
	ALBEDO = c;
}
