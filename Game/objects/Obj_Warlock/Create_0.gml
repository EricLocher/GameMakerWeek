attackRange = 200;
attackSpeed = 1; //Lower = faster
moveSpeed = 0.75;
enemyHealth = 3;
iFrames = false;
direction = random_range(0, 359);

state = states.idle;
aggroDistance = 200;

pathingInterval = 0.5;
path = path_add();

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
	

alarm[0] = room_speed * pathingInterval;
alarm[1] = room_speed * attackSpeed;

function DamageEnemy(){
	if(!iFrames){
		enemyHealth --;
		iFrames = true;
		moveSpeed = 0.5;
		alarm[3] = room_speed * 0.75;
		alarm[2] = 3;
		enemyHealth --;
		if(enemyHealth <= 0){
			audio_play_sound(Sou_EnemyDeath, 1, false);
			instance_destroy();	
		}
	}
}

function ShootPlayer()
{
	var inst = instance_create_layer(x, y - 16, layer, Obj_Fireball)
	inst.direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
}

function Animate()
{
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