// A gas giant far over the arena: soft bands that drift, a night side, and an atmosphere glowing in the arena's colour
// at the edge. All maths, no textures.
shader_type spatial;
render_mode unshaded, cull_back;

uniform vec3 band_a : source_color = vec3(0.26, 0.17, 0.30);
uniform vec3 band_b : source_color = vec3(0.12, 0.17, 0.26);
uniform vec3 glow : source_color = vec3(0.1, 0.75, 1.0);
uniform vec3 sun_dir = vec3(0.6, 0.35, 0.7);
uniform float energy = 0.0;

varying vec3 local_n;

float hash(vec2 p) { return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453); }
float noise(vec2 p) {
	vec2 i = floor(p);
	vec2 f = fract(p);
	f = f * f * (3.0 - 2.0 * f);
	return mix(mix(hash(i), hash(i + vec2(1, 0)), f.x), mix(hash(i + vec2(0, 1)), hash(i + vec2(1, 1)), f.x), f.y);
}

void vertex() {
	local_n = normalize(VERTEX);
}

void fragment() {
	float lat = local_n.y;
	float lon = atan(local_n.x, local_n.z);
	float n = noise(vec2(lon * 3.0 + TIME * 0.01, lat * 14.0)) * 0.6 + noise(vec2(lon * 9.0 - TIME * 0.02, lat * 40.0)) * 0.25;
	float b = 0.5 + 0.5 * sin(lat * 22.0 + n * 3.0);
	vec3 col = mix(band_a, band_b, b);
	vec3 wn = normalize((MODEL_MATRIX * vec4(local_n, 0.0)).xyz);
	float day = smoothstep(-0.15, 0.6, dot(wn, normalize(sun_dir)));
	col *= 0.08 + day * 0.9;
	float edge = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), 5.0);
	col += glow * edge * (0.35 + 0.5 * energy) * (0.3 + day);
	ALBEDO = col;
}
