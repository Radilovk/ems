// A hazard beam: opaque red and near-black warning stripes running along it, a hot white edge, pulsing.
// Nothing else in the game looks like this — a danger you can read at a glance, in any room.
shader_type spatial;
render_mode unshaded, cull_disabled, shadows_disabled;

uniform vec4 color : source_color = vec4(1.0, 0.1, 0.12, 1.0);
uniform float stripes = 7.0;
uniform bool vertical = false;
uniform float pulse = 0.0;
uniform float opacity = 0.95;         // a wall is see-through: what comes next must stay visible behind it

void fragment() {
	float u = vertical ? UV.y : UV.x;
	float across = vertical ? UV.x : UV.y;
	float band = step(0.5, fract(u * stripes - TIME * 0.9));
	float edge = pow(abs(across - 0.5) * 2.0, 4.0);
	float beat = 0.85 + 0.15 * sin(TIME * 9.0);
	vec3 base = mix(vec3(0.07, 0.0, 0.02), color.rgb * beat, band);
	ALBEDO = mix(base, vec3(1.0, 0.85, 0.75), edge * 0.8 + pulse * 0.4);
	ALPHA = clamp(opacity + edge * 0.5 + band * (1.0 - opacity) * 0.35, 0.0, 1.0);
}
