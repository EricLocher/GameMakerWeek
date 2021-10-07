function WallCollision(){

tileSize = 16;

	var _collision = false;

	if(tilemap_get_at_pixel(collisionMap, x + xVel, y))
	{
		x -= x mod tileSize;
		if(sign(xVel) == 1)
			x += tileSize - 1;
		xVel = 0;

	}

	x += xVel;


	if(tilemap_get_at_pixel(collisionMap, x, y + yVel))
	{
		y -= y mod tileSize;
		if(sign(yVel) == 1) 
			y += tileSize - 1;
		yVel = 0;
	

	}

	y += yVel;
	
	return;
}