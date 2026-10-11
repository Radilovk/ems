// Soft contact shadow under a figure (cheap; the Quest renderer has no shadow catcher).
shader_type spatial;
render_mode unshaded, blend_mix, depth_draw_never, cull_disabled, shadows_disabled;

uniform float strength = 0.45;

void fragment() {
	float r = length(UV - vec2(0.5)) * 2.0;
	ALBEDO = vec3(0.04, 0.03, 0.02);
	ALPHA = strength * pow(1.0 - smoothstep(0.0, 1.0, r), 1.6);
}
