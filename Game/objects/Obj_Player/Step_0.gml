_Left = keyboard_check(ord("A"));
_Right = keyboard_check(ord("D"));
_Up = keyboard_check(ord("W"));
_Down = keyboard_check(ord("S"));

InputDirection = point_direction(0, 0, _Right - _Left, _Down - _Up);

InputMagnitude = (_Right - _Left != 0) || (_Down - _Up != 0);

//show_debug_message(InputDirection);

xVel = lengthdir_x(InputMagnitude * playerStats.moveSpeed, InputDirection);
yVel = lengthdir_y(InputMagnitude * playerStats.moveSpeed, InputDirection);


if(playerHealth <= 0){
	instance_destroy();
	iFrames = true;
}


//x += xVel;
//y += yVel;

WallCollision();
