accX = Obj_Player.x - x;
accY = (Obj_Player.y - Obj_Player.sprite_height/2) - y;


if(abs(accX) < 300 && abs(accY) < 300){
	z = sqrt((accX * accX)  + (accY * accY));


	accX = accX / z;
	accY = accY / z;

	accX *= accSpeed;
	accY *= accSpeed;

	velX += accX;
	velY += accY;
	
	z = sqrt((velX * velX)  + (velY * velY));
	
	if(z > maxSpeed){
		velX = (velX / z) * maxSpeed;
		velY = (velY / z) * maxSpeed;
	}

}

x += velX;
y += velY;