_Left = keyboard_check(ord("A"));
_Right = keyboard_check(ord("D"));
_Up = keyboard_check(ord("W"));
_Down = keyboard_check(ord("S"));

inputDirection = point_direction(0, 0, _Right - _Left, _Down - _Up);
inputMagnitude = (_Right - _Left != 0) || (_Down - _Up != 0);

//show_debug_message(inputDirection);

xVel = lengthdir_x(inputMagnitude * playerStats.moveSpeed, inputDirection);
yVel = lengthdir_y(inputMagnitude * playerStats.moveSpeed, inputDirection);


if(playerHealth <= 0){
	instance_destroy();
	iFrames = true;
}


//x += xVel;
//y += yVel;

WallCollision();

if(inputMagnitude != 0)
{
	direction = inputDirection;
	if(direction == 0)
		sprite_index = spriteWalk.Right; 
	else if(direction == 90)
		sprite_index = spriteWalk.Up; 	
	else if(direction == 180)
		sprite_index = spriteWalk.Left;
	else if(direction == 270)
		sprite_index = spriteWalk.Down;	
} 
else if(!playerAttacking && inputMagnitude == 0){
	image_index = 0;
}


