pillarHealth = 15;
iFrames = false;
destroyed = false;

function damagePillar(){
	if(!iFrames){
		iFrames = true;
		pillarHealth --;
		alarm[0] = 0.25 * room_speed;
	}
}
	
