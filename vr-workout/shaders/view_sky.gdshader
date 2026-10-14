// The landscape outside the halls' windows, as the sky: infinitely far, so in the headset it is truly out there, with
// depth. EYEDIR is already turned with the room (Environment.sky_rotation). Two kinds of picture:
//  · a 360° photo (2:1) wraps round as it is;
//  · an ordinary photo is hung on a cylinder round the player: its width spans `span` (radians) centred ahead, its
//    `horizon` row sits at eye level (a real horizon is always at eye height), and its height follows from its own
//    proportions, so nothing is stretched. Past its sides it continues mirrored (no seam, nothing missing even from
//    the far side windows); above its top it fades into its own sky colour, below its bottom into its ground colour.
shader_type sky;

uniform sampler2D view : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform bool is_photo = false;         // an ordinary photo (true) or a 360° one
uniform float yaw = 0.0;            // turn the landscape (0..1): its best part to the main window ahead
uniform float lift = 0.0;           // 360°: > 0 lowers the horizon · photo: degrees the horizon sits below the eye
uniform float span = 2.094;         // photo: how wide it hangs (radians)
uniform float aspect = 1.5;         // photo: width / height
uniform float horizon = 0.5;        // photo: the row of its horizon (0 top … 1 bottom)
uniform float gain = 1.05;          // outside is a little brighter than in

vec3 photo(vec3 d) {
	float az = atan(d.x, -d.z) - yaw * 2.0 * PI;
	az = mod(az + PI, 2.0 * PI) - PI;
	float t = d.y / max(length(d.xz), 1e-4) + tan(radians(lift));    // height on a unit cylinder
	float x = az / span + 0.5;
	float v = horizon - t * aspect / span;
	float daz = dFdx(az);                            // derivatives before the fold and the wrap: mip level and
	float daz2 = dFdy(az);                           // anisotropy stay right everywhere (no seam)
	daz -= 2.0 * PI * round(daz / (2.0 * PI));
	daz2 -= 2.0 * PI * round(daz2 / (2.0 * PI));
	vec2 gx = vec2(daz / span, dFdx(v));
	vec2 gy = vec2(daz2 / span, dFdy(v));
	float m = mod(x, 2.0);                           // mirrored past the sides
	x = m < 1.0 ? m : 2.0 - m;
	float vc = clamp(v, 0.002, 0.998);
	vec3 c = textureGrad(view, vec2(x, vc), gx, gy).rgb;
	float out_top = clamp(-v / 0.18, 0.0, 1.0);      // beyond the photo: its own colour there, softly
	float out_bot = clamp((v - 1.0) / 0.18, 0.0, 1.0);
	if (out_top > 0.0) {
		vec3 sky = textureLod(view, vec2(0.5, 0.01), 12.0).rgb * 0.5 + textureLod(view, vec2(x, 0.01), 5.0).rgb * 0.5;
		c = mix(c, sky, smoothstep(0.0, 1.0, out_top));
	}
	if (out_bot > 0.0) {
		vec3 gnd = textureLod(view, vec2(x, 0.99), 5.0).rgb;
		c = mix(c, gnd, smoothstep(0.0, 1.0, out_bot));
	}
	return c;
}

void sky() {
	vec3 d = EYEDIR;
	if (is_photo) {
		COLOR = photo(d) * gain;
	} else {
		float u = fract(atan(d.x, -d.z) / (2.0 * PI) + 0.5 + yaw);
		float v = clamp(acos(clamp(d.y, -1.0, 1.0)) / PI - lift, 0.0, 1.0);
		vec2 g = vec2(u, v);
		vec2 gx = dFdx(g);                           // mipmapped and anisotropic, sharp at any angle; the u-derivative
		vec2 gy = dFdy(g);                           // jumps by a whole turn where the photo wraps: take that out (no seam)
		gx.x -= round(gx.x);
		gy.x -= round(gy.x);
		COLOR = textureGrad(view, g, gx, gy).rgb * gain;
	}
}
