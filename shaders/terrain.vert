#version 150

uniform mat4 u_Projection;
uniform mat4 u_Model;
uniform mat4 u_View;
uniform mat3 u_Normal;

uniform vec3 u_Sun;

in vec3 a_Vertex;
in vec2 a_BaseTexCoord;
in vec3 a_Normal;

out vec2 v_BaseTexCoord;
out vec4 v_Color;
out float v_Height;
out float visibility;

const float density = 0.01;
const float gradient = 0.6;

void main()
{
	vec4 finalColor = vec4(0.2) + vec4(0.8) * (1.0 - dot(a_Normal, u_Sun));

	v_Color = finalColor;
	v_BaseTexCoord = a_BaseTexCoord;
	v_Height = a_Vertex.y;

	gl_Position = u_Projection * u_View * u_Model * vec4(a_Vertex, 1.0);

	float dist = length(gl_Position);
	visibility = exp(-pow(dist * density, gradient));
	visibility = clamp(visibility, 0.0, 1.0);
}
