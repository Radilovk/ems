// A splat of food: a blob with lumpy edges and a few drops round it (the visor when food gets eaten, the chef's apron
// when a portion is sent back). seed varies the shape, alpha fades it out.
shader_type spatial;
render_mode unshaded, blend_mix, depth_draw_never, cull_disabled, shadows_disabled;

uniform vec4 color : source_color = vec4(0.7, 0.4, 0.12, 1.0);
uniform float alpha = 1.0;
uniform float seed = 0.0;

float hash(float n) { return fract(sin(n) * 43758.5453); }

float blob(vec2 p, vec2 c, float r, float s) {
	vec2 d = p - c;
	float a = atan(d.y, d.x);
	float wob = 0.18 * sin(a * 5.0 + s * 3.1) + 0.1 * sin(a * 9.0 + s * 7.3) + 0.06 * sin(a * 17.0 + s);
	return smoothstep(r * (1.0 + wob), r * (1.0 + wob) - 0.02, length(d));
}

void fragment() {
	vec2 p = UV * 2.0 - 1.0;
	float m = blob(p, vec2(0.0), 0.48, seed);
	for (int i = 0; i < 7; i++) {
		float fi = float(i) + seed * 1.7;
		float a = hash(fi) * 6.2832;
		float d = 0.55 + hash(fi + 3.0) * 0.32;
		m = max(m, blob(p, vec2(cos(a), sin(a)) * d, 0.05 + hash(fi + 7.0) * 0.08, fi));
	}
	float shade = 0.75 + 0.25 * smoothstep(0.5, -0.3, length(p - vec2(-0.15, 0.2)));   // a wet highlight
	ALBEDO = color.rgb * shade + vec3(0.25) * smoothstep(0.12, 0.0, length(p - vec2(-0.18, 0.22)));
	ALPHA = m * alpha * color.a;
}
