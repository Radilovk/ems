// The arena floor: dark glass with a neon grid that streams towards the player (the sense of speed), a lane of light
// down the middle, the beat running along it as a wave, everything fading into the haze far away.
shader_type spatial;
render_mode unshaded, cull_disabled, shadows_disabled;

uniform vec3 base : source_color = vec3(0.006, 0.01, 0.025);
uniform vec3 line : source_color = vec3(0.1, 0.75, 1.0);
uniform vec3 far_col : source_color = vec3(0.10, 0.03, 0.22);
uniform float scroll = 0.0;          // metres the grid has streamed (the game advances it with the elements' speed)
uniform float phase = 0.0;           // 0 … 1 through the beat: a band of light runs from far away to your feet by the next one
uniform float energy = 0.0;          // the music's bass
uniform float cell = 1.0;            // grid spacing, metres

varying vec3 wp;

void vertex() {
	wp = (MODEL_MATRIX * vec4(VERTEX, 1.0)).xyz;
}

float grid_line(float x, float w) {
	float d = abs(fract(x - 0.5) - 0.5) / fwidth(x);
	return 1.0 - clamp(d / w, 0.0, 1.0);
}

void fragment() {
	float dist = length(wp.xz);
	float far = smoothstep(4.0, 30.0, dist);
	vec2 g = vec2(wp.x, wp.z + scroll) / cell;
	float l = max(grid_line(g.x, 1.2), grid_line(g.y, 1.2));
	l *= 1.0 - far * 0.85;
	float lane = exp(-abs(wp.x) * 2.2) * 0.25;                                 // the path things come along
	float pulse = exp(-abs(wp.z + 14.0 * (1.0 - phase)) * 0.7) * smoothstep(0.0, 0.2, phase);
	vec3 c = base + line * (l * (0.26 + 0.4 * energy + 0.6 * pulse) + lane * (0.4 + energy));
	c += line * pulse * 0.25 * (1.0 - far);
	c = mix(c, far_col * 0.6, far);
	ALBEDO = c;
}
