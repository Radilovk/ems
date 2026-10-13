// A shockwave: a thin bright ring that grows and fades where something was broken (or where a hit landed).
shader_type spatial;
render_mode unshaded, blend_mix, depth_draw_never, cull_disabled, shadows_disabled;   // mix: reads on a white room too

uniform vec4 color : source_color = vec4(0.15, 0.85, 1.0, 1.0);
uniform float age = 0.0;            // 0 … 1 over its life

void vertex() {
	MODELVIEW_MATRIX = VIEW_MATRIX * mat4(INV_VIEW_MATRIX[0], INV_VIEW_MATRIX[1], INV_VIEW_MATRIX[2], MODEL_MATRIX[3]);
	MODELVIEW_MATRIX = MODELVIEW_MATRIX * mat4(vec4(length(MODEL_MATRIX[0].xyz), 0.0, 0.0, 0.0),
		vec4(0.0, length(MODEL_MATRIX[1].xyz), 0.0, 0.0), vec4(0.0, 0.0, length(MODEL_MATRIX[2].xyz), 0.0), vec4(0.0, 0.0, 0.0, 1.0));
}

void fragment() {
	float r = length(UV - vec2(0.5)) * 2.0;
	float rad = 0.25 + 0.75 * (1.0 - pow(1.0 - age, 3.0));           // fast out, then slows
	float w = 0.10 * (1.0 - age) + 0.02;
	float ring = 1.0 - smoothstep(0.0, w, abs(r - rad));
	float fill = (1.0 - smoothstep(0.0, rad, r)) * 0.25 * (1.0 - age);
	float a = (ring + fill) * pow(1.0 - age, 1.5);
	ALBEDO = mix(color.rgb, vec3(1.0), 0.35 * (1.0 - age));
	ALPHA = a;
}
