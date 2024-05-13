#version 330 core

// Vertex Attributes
layout(location = 0) in vec3 position;
layout(location = COLOR_0_LOC) in vec4 color_0;
layout(location = INST_M_LOC) in mat4 inst_m;

// Uniforms
uniform mat4 M;
uniform mat4 V;
uniform mat4 P;

flat out vec4 flat_color; // Flat qualifier to prevent interpolation

void main()
{
    gl_Position = P * V * M * inst_m * vec4(position, 1);
    flat_color = color_0; // Pass the vertex color
}