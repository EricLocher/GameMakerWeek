attackRange = 200;
attackSpeed = 1; //Lower = faster
moveSpeed = 1;
enemyHealth = 3;
iFrames = false;
direction = random_range(0, 359);

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
	var inst = instance_create_layer(x, y - 16, layer, Obj_Fireball)
	inst.direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
}

function Animate()
{
	idleSprites = 
	[
		Spr_WarlockIdleRight,
		Spr_WarlockIdleUp,
		Spr_WarlockIdleLeft,
		Spr_WarlockIdleDown		
	];
	walkSprites =
	[
		Spr_WarlockWalkRight,
		Spr_WarlockWalkUp,
		Spr_WarlockWalkLeft,
		Spr_WarlockWalkDown
	];
	
	var i = ((direction + 45) div 90) mod 4;
	switch (state)
	{
		case states.idle:
			sprite_index = idleSprites[i];
			break;
		case states.chase:
			sprite_index = walkSprites[i];
			break;
		default:
			sprite_index = idleSprites[i];
			break;
	}
}