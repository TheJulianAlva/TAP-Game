shader_type canvas_item;

uniform float circle_size:hint_range(0,1) = 0.2f;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment()
{
	if(distance(vec2(0.5, 0.5), UV) < circle_size)
	{
		COLOR.a = 0.0;
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
