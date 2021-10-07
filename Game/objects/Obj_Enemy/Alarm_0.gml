var nearestPlayer = instance_nearest(x, y, Obj_Player);
if (nearestPlayer != noone)
{
	if (mp_grid_path(global.grid, path, x, y, nearestPlayer.x, nearestPlayer.y, 1) && state == states.chase)
	{
		path_start(path, moveSpeed, path_action_stop, false);
	}
}

alarm_set(0, room_speed * pathingInterval);