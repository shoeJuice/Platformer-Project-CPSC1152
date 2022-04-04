//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ); // Passing color of each pixel of sprite to the shader
	gl_FragColor = vec4(1.0, 1.0, 1.0, gl_FragColor.a);
	
}
