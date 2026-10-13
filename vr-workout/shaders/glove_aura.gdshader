// The glove's glow when it lands a hit: the glove's own shape, a little larger, added on top as light — bright at the
// edges (where you look past the surface), softer across the middle, so the whole glove blooms in the hit colour.
shader_type spatial;
render_mode unshaded, blend_add, depth_draw_never, cull_back, shadows_disabled, fog_disabled;

uniform vec4 color : source_color = vec4(1.0, 0.22, 0.85, 1.0);
uniform float energy = 0.0;          // 0 … 1, the hit flare now
uniform float grow = 0.006;          // metres outward along the surface

void vertex() {
	VERTEX += NORMAL * grow * (0.6 + 0.8 * energy);
}

void fragment() {
	float rim = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), 2.0);
	ALBEDO = color.rgb * (0.35 + 1.6 * rim) * energy;
}
