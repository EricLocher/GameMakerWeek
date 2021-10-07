isAttacking = true;
state = BossStates.summoning;

var nearestPlayer = instance_nearest(x, y, Obj_Player);

if (nearestPlayer != noone)
{
	if(point_distance(x, y, nearestPlayer.x, nearestPlayer.y) < attackRange)
	{
		_temp = instance_find(Obj_SummonSpot, 0);
		_temp.Summon();
		_temp = instance_find(Obj_SummonSpot, 1);
		_temp.Summon();
		_temp = instance_find(Obj_SummonSpot, 2);
		_temp.Summon();
		Animate();
	}
}

alarm[0] = 10 * room_speed;
//alarm[0] = random_range(1, 10) * room_speed;