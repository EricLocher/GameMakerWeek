accX = Obj_Player.x - x;
accY = (Obj_Player.y - Obj_Player.sprite_height/2) - y;


if(abs(accX) < 300 && abs(accY) < 300){
	z = sqrt((accX * accX)  + (accY * accY));


	accX = accX / z;
	accY = accY / z;

	accX *= 0.1;
	accY *= 0.1;

	velX += accX;
	velY += accY;
	
	z = sqrt((velX * velX)  + (velY * velY));
	
	if(z > 2){
		velX = (velX / z) * 1.5;
		velY = (velY / z) * 1.5;
	}

}

x += velX;
y += velY;