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
// The view out of the windows: where the mask is white (the glass), a landscape far away is seen instead of the
// blown-out daylight the photo caught. Sampled by the same direction, so each window shows its own part of it.
uniform bool view_on = false;
uniform sampler2D windows : filter_linear, repeat_enable, hint_default_black;
uniform sampler2D view : source_color, filter_linear, repeat_enable;
uniform float view_yaw = 0.0;                    // turn the landscape (0..1): the best of it in the main windows
uniform float view_gain = 1.08;                  // outside is a little brighter than in
uniform float view_lift = 0.03;                  // as if from an upper floor: the near ground sinks, the far shore and peaks show
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
		float m = texture(windows, vec2(u, v)).r;
		if (m > 0.004) {
			vec2 vuv = vec2(fract(atan(d.x, -d.z) / (2.0 * PI) + 0.5 + yaw + view_yaw), clamp(v - view_lift, 0.0, 1.0));
			vec3 o = texture(view, vuv).rgb * view_gain;
			c = mix(c, o * 0.93 + c * 0.07, m);          // a trace of the old glass: it reads as a pane, not a hole
		}
	}
	ALBEDO = c;
}
