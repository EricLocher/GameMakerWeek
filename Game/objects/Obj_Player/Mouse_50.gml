/// @description Attack with current weapon.


if(weaponEquiped == "Sword"){
	if(direction == 45 || direction == 135 || direction == 225 || direction == 315) return;
	if(a_cooldown = false) {
		playerAttacking = true;
		a_cooldown = true;
		
		alarm[1] = room_speed * 0.4;
		with(instance_create_layer(x, y, layer, obj_sword))
		{
			image_angle = Obj_Player.direction + 270
			x = Obj_Player.x;
			y = Obj_Player.y - 16;
			
		}
		
		
		if(direction == 0)
			sprite_index = spriteAttack.Right; 
		else if(direction == 90)
			sprite_index = spriteAttack.Up; 	
		else if(direction == 180)
			sprite_index = spriteAttack.Left;
		else if(direction == 270)
			sprite_index = spriteAttack.Down;
	}
}

else if(weaponEquiped == "Bow"){
	if(b_cooldown == false)
	{
		b_cooldown = true;
		alarm[1] = 1;
		with(instance_create_layer(x, y - 16, layer, obj_Arrow))
		{
			direction = point_direction(x, y, mouse_x, mouse_y);
			image_angle = point_direction(x, y, mouse_x, mouse_y) - 45;
			speed = 6;
		}
	}
}