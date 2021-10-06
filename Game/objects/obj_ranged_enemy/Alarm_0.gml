/// @description Pathing


if (mp_grid_path(global.grid, path, x, y, Obj_Player.x, Obj_Player.y, 1) && state == states.chase)
{
	path_start(path, moveSpeed, path_action_stop, false);
}

alarm_set(0, room_speed * pathingInterval);
