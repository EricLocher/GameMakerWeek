/// @description Attack with current weapon.

if(b_cooldown == false)
{
	b_cooldown = true;
	alarm[1] = 1 * room_speed;
	with(instance_create_layer(x, y, layer, Obj_Arrow))
	{
		direction = point_direction(x, y, mouse_x, mouse_y);
		image_angle = point_direction(x, y, mouse_x, mouse_y) - 45;
		speed = 6;
	}
}