collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

iFrames = false;
playerHealth = 3;
b_cooldown = false;
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
		show_debug_message(playerHealth);
		alarm[0] = 2 * room_speed;
		alarm[2] = 1;
	}
}




