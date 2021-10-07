state = states.idle
aggroDistance = 200;
direction = random_range(0, 359);
iFrames = false;
pathingInterval = 0.5;
moveSpeed = 1.3;
isAttacking = false;

path = path_add();
alarm[0] = room_speed * 0.5;

enemyHealth = 3;


idleSprites = 
[
	Spr_SkeletonIdleRight,
	Spr_SkeletonIdleUp,
	Spr_SkeletonIdleLeft,
	Spr_SkeletonIdleDown
];
walkSprites =
[
	Spr_SkeletonWalkRight,
	Spr_SkeletonWalkUp,
	Spr_SkeletonWalkLeft,
	Spr_SkeletonWalkDown
];
attackSprites =
[
	Spr_SkeletonAttackRight,
	Spr_SkeletonAttackUp,
	Spr_SkeletonAttackLeft,
	Spr_SkeletonAttackDown
];
	


function DamageEnemy(){
	if(!iFrames){
		enemyHealth --;
		iFrames = true;
		moveSpeed = 0.5;
		alarm[3] = room_speed * 0.75;
		alarm[2] = 3;
		enemyHealth --;
		if(enemyHealth <= 0){
			instance_destroy();	
			audio_play_sound(Sou_EnemyDeath, 1, false);
		}
	}
}

function Animate()
{
	var i = ((direction + 45) div 90) mod 4;
	
	if(isAttacking){
		sprite_index = attackSprites[i];
		if(image_index > image_number - 1)
		isAttacking = false;
	}
	else {
		switch (state)
		{
			case states.idle:
				sprite_index = idleSprites[i];
				break;
			case states.chase:
				sprite_index = walkSprites[i];
				break
			default:
				sprite_index = idleSprites[i];
				break;
		}
	}
}
