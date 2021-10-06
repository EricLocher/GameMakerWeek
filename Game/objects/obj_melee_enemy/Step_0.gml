/// @description Aggro
if (point_distance(x, y, Obj_Player.x, Obj_Player.y) < aggroDistance)
{
	state = states.chase;
}