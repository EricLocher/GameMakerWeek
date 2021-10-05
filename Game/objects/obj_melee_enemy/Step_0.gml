/// @description Aggro

if (point_distance(x, y, obj_player.x, obj_player.y) < aggroDistance)
{
	chase = true;
}
else
{
	chase = false;
}