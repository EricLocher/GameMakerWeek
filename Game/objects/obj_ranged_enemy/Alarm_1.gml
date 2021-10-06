/// @description Ranged attack

if(point_distance(x, y, Obj_Player.x, Obj_Player.y) < attackRange)
{
	ShootPlayer();	
}
alarm_set(1, room_speed * attackSpeed);
