/// @description Insert description here
// You can write your code in this editor
	if(tilemap_get_at_pixel(collisionMap, x + speed, y))
	{
		speed = 0;
	}
	
	if(tilemap_get_at_pixel(collisionMap, x, y + speed))
	{
		speed = 0;
	}
