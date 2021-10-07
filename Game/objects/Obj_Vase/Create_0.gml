function DestroyVase(){
	with(instance_create_layer(x, y, layer, obj_HealthPickUp)){
		x -= sprite_width/2;
		y -= sprite_height/2
		image_xscale = 0.5;
		image_yscale = 0.5;
	}	
	instance_destroy();
}