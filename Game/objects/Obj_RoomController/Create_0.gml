levelCurrent = 0;
levelsToPlay = 2;

levelCleared = false;

allLevels = ds_list_create();
ds_list_add(allLevels,
	Room1,
	Room2,
	Room3);
	
ds_list_shuffle(allLevels)

function NextRoom()
{
	if(levelCurrent == 0)
	{
		instance_create_layer(0, 0, "Instances", Obj_Player);
	}
	if(levelCurrent < levelsToPlay)
	{
		var nextLevel = ds_list_find_value(allLevels, levelCurrent);
		room_goto(nextLevel);
		levelCurrent++;
	}
	else
	{
		room_goto(RoomMenu); //Change to bossroom
	}
	Obj_Player.collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
}