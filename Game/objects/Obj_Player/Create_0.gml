collisionMap = layer_tilemap_get_id(layer_get_id("No_walk"));

iFrames = false;
playerHealth = 3; 
b_cooldown = false;
a_cooldown = false;
neededExp = 2;
currentExp = 0;
xVel = 0;
yVel = 0;
playerAttacking = false;

weaponEquiped = "Sword";

playerStats = {
	maxHealth : 3,
	moveSpeed : 2	
}

collisionSpeed = playerStats.moveSpeed + 2; 

playerState = playerStates.walking;

function DamagePlayer(){
	if(iFrames == false){
		playerHealth --;
		iFrames = true;
		alarm[0] = 2 * room_speed;
		alarm[2] = 1;
		audio_play_sound(Sou_PlayerHurt, 2, false); 
		if(playerHealth <= 0){
			room_goto(RoomMenu);
			Obj_RoomController.levelCurrent = 0;
			instance_destroy();
			Obj_Camera.follow = instance_find(Obj_Player, 0);
		}
	}
}

function HealPlayer(){
	if(playerHealth < playerStats.maxHealth)
	{               
		playerHealth ++;
	}
}

function AddExp(amount){
	currentExp += amount;
	if(currentExp > neededExp){
		currentExp -= neededExp;
		neededExp *= 2;
	}
}


function Animate()
{
	walkSprites =
	[
		Player_Walk_Right,
		Player_Walk_Up,
		Player_Walk_Left,
		Player_Walk_Down
	];
	
	attackSprites = 
	[
		Player_Attack_Right,
		Player_Attack_Up,
		Player_Attack_Left,
		Player_Attack_Down
	]
	
	var i = ((direction + 45) div 90) mod 4;
	if(playerState == playerStates.walking)
		sprite_index = walkSprites[i];
	if(playerState == playerStates.attacking)
		sprite_index = attackSprites[i];
}
