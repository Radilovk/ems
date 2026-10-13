// Floating moon rocks round the arena (Poly Haven moon rocks, CC0): the real rock texture, lit dimly by the night, with
// a rim of the arena's colour that brightens with the music's bass — dark shapes drawn in neon against the stars.
shader_type spatial;
render_mode cull_back;

uniform sampler2D albedo_tex : source_color, filter_linear_mipmap, repeat_enable;
uniform sampler2D normal_tex : hint_normal, filter_linear_mipmap, repeat_enable;
uniform vec3 rim_color : source_color = vec3(0.1, 0.75, 1.0);
uniform float rim = 1.0;            // 0 … 2: the arena's light now (bass, flares)

void fragment() {
	ALBEDO = texture(albedo_tex, UV).rgb * 0.55;
	NORMAL_MAP = texture(normal_tex, UV).rgb;
	ROUGHNESS = 0.95;
	float f = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), 3.0);
	EMISSION = rim_color * f * rim * 1.6;
}
