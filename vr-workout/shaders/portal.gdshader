// The portal far ahead, where everything comes from: a swirling disc of light inside the ring, brighter on the bass,
// flaring when something is thrown out of it.
shader_type spatial;
render_mode unshaded, blend_add, depth_draw_never, cull_disabled, shadows_disabled;

uniform vec3 color : source_color = vec3(0.1, 0.75, 1.0);
uniform float energy = 0.0;
uniform float flare = 0.0;

void fragment() {
	vec2 p = (UV - 0.5) * 2.0;
	float r = length(p);
	float a = atan(p.y, p.x);
	float swirl = 0.5 + 0.5 * sin(a * 6.0 + r * 9.0 - TIME * 2.5);
	float disc = (1.0 - smoothstep(0.55, 1.0, r)) * (0.25 + 0.35 * swirl);
	float core = exp(-r * 4.0);
	float i = disc * (0.35 + 0.5 * energy + 0.8 * flare) + core * (0.4 + flare);
	ALBEDO = mix(color, vec3(1.0), core * 0.6 + flare * 0.3) * i;
	ALPHA = clamp(i, 0.0, 1.0);
}
