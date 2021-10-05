/// @description Pathing
show_debug_message(speed)
if (mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, 1) && chase)
{
	path_start(path, 2, path_action_stop, false);
}

alarm_set(0, room_speed * 0.5);