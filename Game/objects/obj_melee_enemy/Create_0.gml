enum states 
{
	idle,
	aggro
}



health = 2;

aggro = false;
aggroDistance = 200;

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