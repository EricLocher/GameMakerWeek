/// @description Pathing
show_debug_message(speed)
if (mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, 1) && state = states.chase)
{
	path_start(path, moveSpeed, path_action_stop, false);
}

alarm_set(0, room_speed * pathingInterval);