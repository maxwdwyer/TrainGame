varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float ran1;
uniform float ran2;
uniform float ran3;

uniform float fog;
uniform vec2 player;

float rand(vec2 bob){
    return fract(sin(dot(bob, vec2(ran2, ran3))) * ran1);
}

void main()
{
	vec4 startcol = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 fcol = vec4(1.0, .88, .7, 1.0);
    vec2 pixel = floor(v_vTexcoord * 640.);

	float fog2 = clamp(fog, .0, 7500.);
	float dist = clamp(distance(pixel, player), .0, 250.);
	float r = (rand(pixel) / 20.) * (fog * .00000035);
	vec4 fog1 = vec4(.375 + r + (fog * .0000070), 0.375 + r, 0.375 + r, clamp(dist * (.0007 + (fog2 * .00000035)), .0, .9));//vec4(.2,.1,.05,1.0); 
		
	gl_FragColor = fog1;
}


