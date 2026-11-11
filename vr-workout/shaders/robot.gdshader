// The android's legs (robot_legs.gd): its own textures, the white panels tinted to the gloves' suit (cyan metal
// plates, dark joints), a rim and a soft glow in the combo colour. tint = 0 keeps the android white.
shader_type spatial;
render_mode cull_disabled;

uniform sampler2D albedo_tex : source_color, filter_linear_mipmap;
uniform sampler2D normal_tex : hint_normal, filter_linear_mipmap;
uniform sampler2D orm_tex : hint_default_white, filter_linear_mipmap;   // glTF: G roughness, B metallic
uniform vec3 plate : source_color = vec3(0.12, 0.62, 0.78);
uniform vec3 dark : source_color = vec3(0.07, 0.075, 0.09);
uniform float tint : hint_range(0.0, 1.0) = 1.0;
uniform vec3 glow : source_color = vec3(0.25, 0.85, 1.0);
uniform float glow_energy = 0.2;
uniform int hide_mask = 0;              // the skin's binds that are not the legs (pelvis, trunk, arms, head): dissolved
varying float hidden;

void vertex() {
	hidden = 0.0;
	for (int i = 0; i < 4; i++) {
		if (((hide_mask >> int(BONE_INDICES[i])) & 1) != 0) {
			hidden += BONE_WEIGHTS[i];
		}
	}
}

void fragment() {
	// the hips and above dissolve (dithered: no blending, no sorting) — a soft edge round the thighs' tops
	float n = fract(sin(dot(FRAGCOORD.xy, vec2(12.9898, 78.233))) * 43758.5453);
	if (hidden > 0.3 + 0.4 * n) {
		discard;
	}
	vec3 a = texture(albedo_tex, UV).rgb;
	vec4 orm = texture(orm_tex, UV);
	float lum = dot(a, vec3(0.299, 0.587, 0.114));
	float panel = smoothstep(0.35, 0.7, lum);                 // the white shell vs the dark joints
	vec3 tinted = mix(dark * (0.6 + 0.8 * lum), plate * (0.45 + 0.65 * lum), panel);
	ALBEDO = mix(a, tinted, tint) * (FRONT_FACING ? 1.0 : 0.25);   // the inside of a shell, dark
	METALLIC = mix(orm.b, mix(0.5, 0.7, panel), tint);
	ROUGHNESS = mix(orm.g, mix(0.45, 0.28, panel), tint);
	NORMAL_MAP = texture(normal_tex, UV).rgb;
	float rim = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), 3.0);
	EMISSION = glow * glow_energy * (0.25 * panel + 1.2 * rim * panel) * tint;
}
