/// @description Insert description here
// You can write your code in this editor

x = Obj_Player.x;
y = Obj_Player.y

if(Obj_Player.direction == 0 || Obj_Player.direction == 180){
	y -= 10;
}
else if(Obj_Player.direction == 90){
	y -= 16;
}
else if(Obj_Player.direction == 270){
	y -= 8;
}


if(image_index > image_number - 1)
	instance_destroy();