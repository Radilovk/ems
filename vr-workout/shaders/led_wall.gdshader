// The big LED wall at the end of the hall: a music visualiser in LED dots — bars that jump with the bass and the
// beat, a horizon line that runs through the beat, the combo's colour. Pure maths, no textures.
shader_type spatial;
render_mode unshaded, cull_back;

uniform vec3 color : source_color = vec3(0.1, 0.75, 1.0);
uniform vec3 color2 : source_color = vec3(0.95, 0.2, 0.85);
uniform float energy = 0.0;      // the music's bass now, 0 … 1
uniform float phase = 0.0;       // 0 … 1 through the beat
uniform vec2 dots = vec2(180.0, 60.0);

float hash(float n) { return fract(sin(n * 91.345) * 47453.5453); }

void fragment() {
	vec2 uv = UV;
	uv.y = 1.0 - uv.y;
	vec2 cell = floor(uv * dots);
	vec2 f = fract(uv * dots) - 0.5;
	float led = smoothstep(0.5, 0.25, length(f));                 // a round LED in each cell
	vec2 c = (cell + 0.5) / dots;
	float bars = 36.0;
	float b = floor(c.x * bars);
	float mid = abs(b - bars * 0.5 + 0.5) / (bars * 0.5);          // 0 middle … 1 edges
	float t = TIME * (0.6 + hash(b) * 0.8);
	float h = 0.15 + 0.55 * energy * (1.0 - 0.6 * mid) + 0.18 * (0.5 + 0.5 * sin(t * 3.0 + b)) * (0.4 + energy);
	h *= 1.0 + 0.35 * exp(-phase * 6.0);                            // every beat kicks them up
	float bar = step(c.y, h) * step(0.18, fract(c.x * bars));       // a gap between bars
	vec3 col = mix(color, color2, c.y / max(h, 0.01)) * bar;
	float peak = step(abs(c.y - h - 0.03), 0.012) * step(0.18, fract(c.x * bars));
	col += vec3(1.0) * peak * 0.8;
	float sweep = exp(-pow((c.x - phase) * 9.0, 2.0)) * 0.25;      // a band of light running across with the beat
	col += color * sweep;
	col += color * 0.04;                                            // the panel is never fully black
	ALBEDO = col * led * 1.6;
}
