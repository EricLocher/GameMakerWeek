_Left = keyboard_check(ord("A"));
_Right = keyboard_check(ord("D"));
_Up = keyboard_check(ord("W"));
_Down = keyboard_check(ord("S"));

_Interact = keyboard_check_pressed(ord("E"));
_Consumable = keyboard_check_pressed(ord("Q"));
_Attack = mouse_check_button_pressed(mb_left);


InputDirection = point_direction(0, 0, _Right - _Left, _Down - _Up);
InputMagnitude = (_Right - _Left != 0) || (_Down - _Up != 0);

show_debug_message(InputMagnitude);

xVel = lengthdir_x(InputMagnitude * moveSpeed, InputDirection);
yVel = lengthdir_y(InputMagnitude * moveSpeed, InputDirection);

//x += xVel;
//y += yVel;

PlayerCollision();