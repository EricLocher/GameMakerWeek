_Left = keyboard_check(ord("A"));
_Right = keyboard_check(ord("D"));
_Up = keyboard_check(ord("W"));
_Down = keyboard_check(ord("S"));

inputDirection = point_direction(0, 0, _Right - _Left, _Down - _Up);
inputMagnitude = (_Right - _Left != 0) || (_Down - _Up != 0);


xVel = lengthdir_x(inputMagnitude * playerStats.moveSpeed, inputDirection);
yVel = lengthdir_y(inputMagnitude * playerStats.moveSpeed, inputDirection);

if(place_free(x + (xVel * collisionSpeed), y))
x += xVel;
if(place_free(x, y + (yVel * collisionSpeed)))
y += yVel;
//WallCollision();

if(inputMagnitude != 0)
{
	direction = inputDirection;
	Animate();
} 
else if(!playerAttacking && inputMagnitude == 0){
	image_index = 0;
}


