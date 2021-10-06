//Aggro
var nearestPlayer = instance_nearest(x, y, Obj_Player);
if (nearestPlayer != noone)
{
	if (point_distance(x, y, nearestPlayer.x, nearestPlayer.y) < aggroDistance)
	{
		state = states.chase;
	}
}

//Animation
Animate();