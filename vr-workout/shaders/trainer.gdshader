// The coach: a smooth "glass and light" figure — clearly a guide, never an almost-human.
shader_type spatial;
render_mode blend_mix, depth_draw_always, cull_back, specular_schlick_ggx;

uniform vec4 base : source_color = vec4(0.10, 0.62, 0.72, 0.82);
uniform vec4 rim : source_color = vec4(0.75, 0.97, 1.0, 1.0);
uniform float rim_power = 2.4;
uniform vec4 glow : source_color = vec4(1.0, 0.55, 0.15, 1.0);  // EMS work: warm pulse on the muscles in use
uniform float active = 0.0;                                        // 0..1, driven by the impulse phase

void fragment() {
	float f = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), rim_power);
	vec3 c = mix(base.rgb, glow.rgb, active * 0.85);
	ALBEDO = c;
	ROUGHNESS = 0.25;
	METALLIC = 0.1;
	EMISSION = rim.rgb * f * 0.9 + glow.rgb * active * 0.6;
	ALPHA = clamp(base.a + f * 0.3 + active * 0.15, 0.0, 1.0);
}
