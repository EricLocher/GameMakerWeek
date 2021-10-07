/// @description Ranged attack

var nearestPlayer = instance_nearest(x, y, Obj_Player);
if (nearestPlayer != noone)
{
	if(point_distance(x, y, nearestPlayer.x, nearestPlayer.y) < attackRange)
	{
		ShootPlayer();	
	}
}

alarm_set(1, room_speed * attackSpeed);
