// The arena's sky: deep night with a violet-teal haze along the horizon, the real Milky Way overhead (Poly Haven
// "Rogland Clear Night", CC0 — the sky half only, its own glow taken out so just the stars and the galaxy add up), a slow
// nebula and twinkling stars. The haze and the galaxy glow a little with the music's bass.
shader_type sky;

uniform vec3 deep : source_color = vec3(0.004, 0.006, 0.02);
uniform vec3 haze : source_color = vec3(0.10, 0.03, 0.22);
uniform vec3 accent : source_color = vec3(0.05, 0.55, 0.75);
uniform float energy = 0.0;          // 0 … 1, the music's bass now
uniform sampler2D milky : source_color, filter_linear_mipmap_anisotropic, repeat_enable;   // upper half of the panorama: row 0 = zenith
uniform float milky_amount = 0.85;
uniform float milky_turn = 0.62;     // where the galaxy's arc stands (0 … 1 of a full turn)

float hash(vec3 p) {
	p = fract(p * vec3(443.897, 441.423, 437.195));
	p += dot(p, p.yzx + 19.19);
	return fract((p.x + p.y) * p.z);
}

float noise(vec3 x) {
	vec3 i = floor(x);
	vec3 f = fract(x);
	f = f * f * (3.0 - 2.0 * f);
	return mix(mix(mix(hash(i), hash(i + vec3(1, 0, 0)), f.x), mix(hash(i + vec3(0, 1, 0)), hash(i + vec3(1, 1, 0)), f.x), f.y),
		mix(mix(hash(i + vec3(0, 0, 1)), hash(i + vec3(1, 0, 1)), f.x), mix(hash(i + vec3(0, 1, 1)), hash(i + vec3(1, 1, 1)), f.x), f.y), f.z);
}

void sky() {
	vec3 d = EYEDIR;
	float h = clamp(d.y, -1.0, 1.0);
	float band = exp(-abs(h) * 7.0);                                  // the glow along the horizon
	vec3 col = mix(deep, haze, band * (0.8 + 0.5 * energy));
	col += accent * pow(band, 3.0) * (0.25 + 0.6 * energy) * smoothstep(0.0, -1.0, d.z);   // brighter ahead
	float neb = noise(d * 3.0 + vec3(TIME * 0.01, 0.0, 0.0)) * noise(d * 7.0 - vec3(0.0, TIME * 0.008, 0.0));
	col += mix(haze, accent, 0.4) * pow(neb, 2.0) * 0.35 * smoothstep(-0.1, 0.4, h);
	float u = atan(d.x, -d.z) / 6.2831853 + milky_turn;
	float v = 1.0 - asin(clamp(h, 0.0, 1.0)) / 1.5707963;
	vec2 g = vec2(u, v);
	vec2 gx = dFdx(g);                               // mipmapped and anisotropic, sharp at any angle; the u-derivative
	vec2 gy = dFdy(g);                               // jumps by a whole turn where the photo wraps: take that out (no seam)
	gx.x -= round(gx.x);
	gy.x -= round(gy.x);
	vec3 gal = textureGrad(milky, g, gx, gy).rgb;
	col += gal * milky_amount * (0.9 + 0.35 * energy) * smoothstep(0.0, 0.08, h);
	vec3 cell = floor(d * 260.0);                                     // stars: one chance per cell, a few twinkle
	float s = hash(cell);
	float star = step(0.9975, s) * smoothstep(0.0, 0.25, h + 0.05);
	star *= 0.6 + 0.4 * sin(TIME * (1.0 + s * 4.0) + s * 40.0);
	col += vec3(0.85, 0.9, 1.0) * star * 1.4;
	COLOR = col;
}
