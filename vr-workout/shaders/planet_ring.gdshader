// The planet's ring: fine bands of dust, see-through, its light following the arena's colour.
shader_type spatial;
render_mode unshaded, cull_disabled, blend_add, depth_draw_never;

uniform vec3 color : source_color = vec3(0.1, 0.75, 1.0);
uniform float inner = 0.55;          // of the quad's half size
uniform float energy = 0.0;

void fragment() {
	float r = length(UV - 0.5) * 2.0;
	float in_ring = smoothstep(inner, inner + 0.03, r) * smoothstep(1.0, 0.95, r);
	float bands = 0.55 + 0.45 * sin(r * 140.0) * sin(r * 37.0 + 1.3);
	ALBEDO = mix(vec3(0.75, 0.7, 0.85), color, 0.45) * in_ring * bands * (0.22 + 0.25 * energy);
}
