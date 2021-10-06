/// @description Ranged attack

if(point_distance(x, y, obj_player.x, obj_player.y) < attackRange)
{
	ShootPlayer();	
}
alarm_set(1, room_speed * attackSpeed);
