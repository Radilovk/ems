// Soft glowing ring on the floor (your spot, the coach's spot).
shader_type spatial;
render_mode unshaded, blend_add, depth_draw_never, cull_disabled, shadows_disabled;

uniform vec4 color : source_color = vec4(0.25, 0.85, 1.0, 1.0);
uniform float width = 0.06;
uniform float pulse = 0.0;

void fragment() {
	float r = length(UV - vec2(0.5)) * 2.0;
	float ring = smoothstep(1.0 - width, 1.0 - width * 0.4, r) * (1.0 - smoothstep(0.985, 1.0, r));
	float inner = (1.0 - smoothstep(0.0, 1.0, r)) * 0.10;
	ALBEDO = color.rgb * (ring * (0.9 + pulse * 0.6) + inner);
}
