// The target ring of a sphere: it waits at the spot where the sphere must be hit, tightens and brightens as the sphere
// comes — when the sphere fills it, strike. Always faces the player.
shader_type spatial;
render_mode unshaded, blend_add, depth_draw_never, depth_test_disabled, cull_disabled, shadows_disabled;

uniform vec4 color : source_color = vec4(0.15, 0.85, 1.0, 1.0);
uniform float k = 1.0;              // 1 far away … 0 at the moment of contact
uniform float alpha = 1.0;

void vertex() {
	MODELVIEW_MATRIX = VIEW_MATRIX * mat4(INV_VIEW_MATRIX[0], INV_VIEW_MATRIX[1], INV_VIEW_MATRIX[2], MODEL_MATRIX[3]);
	MODELVIEW_MATRIX = MODELVIEW_MATRIX * mat4(vec4(length(MODEL_MATRIX[0].xyz), 0.0, 0.0, 0.0),
		vec4(0.0, length(MODEL_MATRIX[1].xyz), 0.0, 0.0), vec4(0.0, 0.0, length(MODEL_MATRIX[2].xyz), 0.0), vec4(0.0, 0.0, 0.0, 1.0));
}

void fragment() {
	float r = length(UV - vec2(0.5)) * 2.0;
	float w = mix(0.035, 0.07, 1.0 - k);
	float ring = smoothstep(1.0 - w, 1.0 - w * 0.45, r) * (1.0 - smoothstep(1.0 - w * 0.45, 1.0, r));
	float dot_ = (1.0 - smoothstep(0.0, 0.07, r)) * 0.8;             // the bull's-eye: where to put the fist
	float a = (ring * (0.55 + 0.45 * (1.0 - k)) + dot_ * k) * alpha;
	ALBEDO = mix(color.rgb, vec3(1.0), (1.0 - k) * 0.6) * a;
	ALPHA = a;
}
