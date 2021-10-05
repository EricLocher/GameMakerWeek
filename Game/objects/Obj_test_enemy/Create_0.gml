enemyHealth = 3;


function DamageEnemy(){
	enemyHealth --;
	if(enemyHealth <= 0){
		with(instance_create_layer(x, y, layer, Obj_HealthPickUp)){
			x -= sprite_width/2;
			y -= sprite_height/2
			image_xscale = 0.5;
			image_yscale = 0.5;
		}
		
		for(i = 0; i < random(4); i++){	
			with(instance_create_layer(x + random_range(-50, 50), y + random_range(-50, 50), layer, Obj_ExpOrb))
			{
				scale = random_range(0.1, 0.5);
				image_xscale = scale;
				image_yscale = scale;
				size = scale * 4;
			}
		}
		
		
		instance_destroy();	
	}
}

