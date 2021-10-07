attackRange = 500;
alarm[0] = 10 * room_speed;

alarm[1] = 5 * room_speed;

state = BossStates.idle;
isAttacking = false;


function ShootPlayer()
{
	for(var i = 0; i < 3; i++) {
		var inst = instance_create_layer(x + random_range(-100, 100), y - 16, layer, Obj_Fireball)
		inst.direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
	}
}

function Animate(){
	show_debug_message("A");
	if(isAttacking){
		if(state == BossStates.attacking)
			sprite_index = Spr_BossAttack;
		else if(state == BossStates.summoning)
			sprite_index = Spr_BossHandsup;
			
	} else {
		state = BossStates.idle;
		sprite_index = Spr_BossIdle;
	}
}
