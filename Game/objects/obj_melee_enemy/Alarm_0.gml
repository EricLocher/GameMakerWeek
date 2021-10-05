/// @description Pathing
// You can write your code in this editor

if (mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, 1))
{
	path_start(path, 2, path_action_stop, false);
}

alarm_set(0, room_speed * 0.5);