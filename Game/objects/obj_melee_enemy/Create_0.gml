health = 2;

state = states.idle
aggroDistance = 200;

pathingInterval = 0.5;
moveSpeed = 2;

path = path_add();
alarm[0] = room_speed * 0.5;

function DamageEnemy()
{
	health --;
	if(health <= 0)
	{
		instance_destroy();
	}
}