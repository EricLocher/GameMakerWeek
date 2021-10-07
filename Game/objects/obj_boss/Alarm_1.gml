/// @description Attack Player
for(var i = 0; i < 3; i++) {
var nearestPlayer = instance_nearest(x, y, Obj_Player);

	if (nearestPlayer != noone)
	{
		if(point_distance(x, y, nearestPlayer.x, nearestPlayer.y) < attackRange)
		{
			ShootPlayer();	
			isAttacking = true;
		}
	}

}