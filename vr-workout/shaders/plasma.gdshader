// A ball of plasma: saturated body, a hot white core, a bright rim, noise drifting inside. Mostly opaque so it reads
// against a white room as well as a dark one (additive glow alone washes out on light backgrounds).
shader_type spatial;
render_mode unshaded, cull_back, shadows_disabled;

uniform vec4 color : source_color = vec4(0.15, 0.85, 1.0, 1.0);
uniform float energy = 1.0;
uniform float pulse = 0.0;          // 0..1 flash (on hit / when about to be missed)

varying vec3 lp;

float hash(vec3 p) {
	p = fract(p * 0.3183099 + vec3(0.1, 0.2, 0.3));
	p *= 17.0;
	return fract(p.x * p.y * p.z * (p.x + p.y + p.z));
}
float vnoise(vec3 x) {
	vec3 i = floor(x);
	vec3 f = fract(x);
	f = f * f * (3.0 - 2.0 * f);
	return mix(mix(mix(hash(i + vec3(0, 0, 0)), hash(i + vec3(1, 0, 0)), f.x),
				   mix(hash(i + vec3(0, 1, 0)), hash(i + vec3(1, 1, 0)), f.x), f.y),
			   mix(mix(hash(i + vec3(0, 0, 1)), hash(i + vec3(1, 0, 1)), f.x),
				   mix(hash(i + vec3(0, 1, 1)), hash(i + vec3(1, 1, 1)), f.x), f.y), f.z);
}

void vertex() {
	lp = VERTEX;
}

void fragment() {
	vec3 n = normalize(NORMAL);
	vec3 v = normalize(VIEW);
	float facing = clamp(dot(n, v), 0.0, 1.0);
	float rim = pow(1.0 - facing, 2.0);
	float t = TIME * 1.6;
	vec3 p = lp * 6.0;
	float cloud = vnoise(p + vec3(0.0, t, t * 0.6)) * 0.6 + vnoise(p * 2.2 - vec3(t, 0.0, t * 1.3)) * 0.4;
	float core = pow(facing, 3.0);
	vec3 body = color.rgb * (0.55 + cloud * 0.9) * energy;
	vec3 hot = mix(body, vec3(1.0), clamp(core * 0.75 + pulse * 0.6, 0.0, 1.0));
	vec3 edge = mix(hot, color.rgb * 1.6 + vec3(0.2), rim);
	ALBEDO = edge;
	ALPHA = 0.88;
}
