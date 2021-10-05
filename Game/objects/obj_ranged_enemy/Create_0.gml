health = 2;

attackRange = 200;
attackSpeed = 1; //Lower = faster
moveSpeed = 1;

state = states.idle;
aggroDistance = 200;

pathingInterval = 0.5;
path = path_add();
alarm[0] = room_speed * pathingInterval;
alarm[1] = room_speed * attackSpeed;

function DamageEnemy()
{
	health --;
	if(health <= 0)
	{
		instance_destroy();
	}
}

function ShootPlayer()
{
	var inst = instance_create_layer(x, y - 16, layer, obj_enemy_projectile)
	inst.direction = point_direction(x, y, obj_player.x, obj_player.y);
}