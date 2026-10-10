// Frosted glass card: rounded corners, a soft vertical tint and a thin light edge. Text sits on it, readable
// against the bright room.
shader_type spatial;
render_mode unshaded, blend_mix, depth_draw_never, cull_back, shadows_disabled;

uniform vec2 size = vec2(1.0, 0.6);         // metres, to keep the corners round at any aspect
uniform float radius = 0.06;
uniform vec4 top : source_color = vec4(0.06, 0.16, 0.20, 0.62);
uniform vec4 bottom : source_color = vec4(0.03, 0.09, 0.12, 0.72);
uniform vec4 edge : source_color = vec4(0.55, 0.9, 1.0, 0.55);

void fragment() {
	vec2 p = (UV - 0.5) * size;
	vec2 q = abs(p) - (size * 0.5 - vec2(radius));
	float d = length(max(q, 0.0)) + min(max(q.x, q.y), 0.0) - radius;   // rounded-box distance
	float aa = fwidth(d);
	float inside = 1.0 - smoothstep(-aa, aa, d);
	float rim = 1.0 - smoothstep(0.0, 0.006, abs(d + 0.003));
	vec4 c = mix(top, bottom, UV.y);
	ALBEDO = mix(c.rgb, edge.rgb, rim * edge.a);
	ALPHA = inside * max(c.a, rim * edge.a);
}
