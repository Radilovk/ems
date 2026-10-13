// The landscape outside the panoramic hall's glass, as the sky: infinitely far, so in the headset it is truly out
// there, with depth. EYEDIR is already turned with the room (Environment.sky_rotation).
shader_type sky;

uniform sampler2D view : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform float yaw = 0.0;            // turn the landscape (0..1): its best part to the main window ahead
uniform float lift = 0.0;           // > 0 lowers the horizon in the windows (keeps the near ground of a photo out)
uniform float gain = 1.05;          // outside is a little brighter than in

void sky() {
	vec3 d = EYEDIR;
	float u = fract(atan(d.x, -d.z) / (2.0 * PI) + 0.5 + yaw);
	float v = clamp(acos(clamp(d.y, -1.0, 1.0)) / PI - lift, 0.0, 1.0);
	vec2 g = vec2(u, v);
	vec2 gx = dFdx(g);                               // mipmapped and anisotropic, sharp at any angle; the u-derivative
	vec2 gy = dFdy(g);                               // jumps by a whole turn where the photo wraps: take that out (no seam)
	gx.x -= round(gx.x);
	gy.x -= round(gy.x);
	COLOR = textureGrad(view, g, gx, gy).rgb * gain;
}
