if(!destroyed) { 
	if(pillarHealth > 10){	
		sprite_index = Spr_pillar;
	}else if(pillarHealth > 5){
		sprite_index = Spr_pillar2;
	}else if(pillarHealth > 0){
		sprite_index = Spr_pillar3;
	}else if(pillarHealth <= 0){
		sprite_index = Spr_pillar4;
		destroyed = true;
	}
} else {
	deadCheck = true;
	for(var i = 0; i < 3; i++){
		if(!instance_find(Obj_BossPillar, i).destroyed)
		deadCheck = false;
	}
	if(deadCheck == true) {
		instance_destroy(Obj_Boss);
		room_goto(RoomMenu);
		Obj_RoomController.levelCurrent = 0;
		instance_destroy(Obj_Player);
		Obj_Camera.follow = instance_find(Obj_Player, 0);
	}
}

