state = states.idle
aggroDistance = 200;
direction = random_range(0, 359);

pathingInterval = 0.5;
moveSpeed = 2;

path = path_add();
alarm[0] = room_speed * 0.5;

enemyHealth = 3;


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

function Animate()
{
	idleSprites = 
	[
		Spr_SkeletonIdleRight,
		Spr_SkeletonIdleUp,
		Spr_SkeletonIdleLeft,
		Spr_SkeletonIdleDown
	];
	walkSprites =
	[
		Spr_SkeletonWalkUp,
		Spr_SkeletonWalkUp,
		Spr_SkeletonWalkDown,
		Spr_SkeletonWalkDown
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


