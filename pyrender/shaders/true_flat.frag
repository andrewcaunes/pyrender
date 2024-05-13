#version 330 core

flat in vec4 flat_color; // Receive the flat color

out vec4 frag_color;

void main()
{
    frag_color = vec4(flat_color.x, flat_color.y, flat_color.z, 1.0); // Use the flat color
}