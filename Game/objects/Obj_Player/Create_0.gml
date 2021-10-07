collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

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


//Animations

spriteWalk = {
	Left: Player_Walk_Left,
	Right: Player_Walk_Right,
	Up: Player_Walk_Up,
	Down: Player_Walk_Down
}

spriteAttack = {
	Left: Player_Attack_Left,
	Right: Player_Attack_Right,
	Up: Player_Attack_Up,
	Down: Player_Attack_Down
}

//Animations

function DamagePlayer(){
	if(iFrames == false){
		playerHealth --;
		iFrames = true;
		alarm[0] = 2 * room_speed;
		alarm[2] = 1;
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

