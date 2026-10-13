// A red edge around the view when a hit is taken: it flares and fades with the suit's punishment (strong, then easing
// back to the base programme), so eyes, ears and muscles feel the same curve. Drawn on a small sphere round the head.
shader_type spatial;
render_mode unshaded, blend_mix, depth_draw_never, depth_test_disabled, cull_front, shadows_disabled;

uniform vec4 color : source_color = vec4(0.85, 0.02, 0.04, 1.0);
uniform float amount = 0.0;         // 0 … 1

void fragment() {
	vec2 c = (SCREEN_UV - vec2(0.5)) * vec2(1.25, 1.0);
	float d = length(c) * 2.0;
	float edge = smoothstep(0.62, 1.35, d);
	float a = amount * edge * 0.7;
	ALBEDO = color.rgb * (0.6 + 0.4 * edge);
	ALPHA = a;
}
