/// @description Behaviour

//Aggro
if (point_distance(x, y, obj_player.x, obj_player.y) < aggroDistance)
{
	state = states.chase;
}