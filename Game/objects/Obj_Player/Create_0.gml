collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

iFrames = false;
playerHealth = 3;
b_cooldown = false;
neededExp = 2;
currentExp = 0;
xVel = 0;
yVel = 0;

playerStats = {
	maxHealth : 3,
	moveSpeed : 2	
}

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

