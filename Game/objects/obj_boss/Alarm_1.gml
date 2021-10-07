isAttacking = true;
state = BossStates.attacking;


var nearestPlayer = instance_nearest(x, y, Obj_Player);

if (nearestPlayer != noone)
{
	if(point_distance(x, y, nearestPlayer.x, nearestPlayer.y) < attackRange)
	{
		ShootPlayer();	
		isAttacking = true;
	}
}
Animate();

alarm[1] = 5 * room_speed;
