health = 2;

attackRange = 200;
attackSpeed = 1; //Lower = faster
moveSpeed = 1;
enemyHealth = 3;


state = states.idle;
aggroDistance = 200;

pathingInterval = 0.5;
path = path_add();

alarm[0] = room_speed * pathingInterval;
alarm[1] = room_speed * attackSpeed;

function DamageEnemy(){
	enemyHealth --;
	if(enemyHealth <= 0){
		with(instance_create_layer(x, y, layer, Obj_HealthPickUp)){
			x -= sprite_width/2;
			y -= sprite_height/2
			image_xscale = 0.5;
			image_yscale = 0.5;
		}
		
		for(i = 0; i < random(4); i++){	
			with(instance_create_layer(x + random_range(-50, 50), y + random_range(-50, 50), layer, Obj_ExpOrb))
			{
				scale = random_range(0.1, 0.5);
				image_xscale = scale;
				image_yscale = scale;
				size = scale * 4;
			}
		}
		
		
		instance_destroy();	
	}
}

function ShootPlayer()
{
	var inst = instance_create_layer(x, y - 16, layer, obj_enemy_projectile)
	inst.direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
}