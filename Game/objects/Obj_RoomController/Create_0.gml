audio_play_sound(Sou_alyssum, 2, true); 

levelCurrent = 0;
levelsToPlay = 2;

levelCleared = false;

allLevels = ds_list_create();
ds_list_add(allLevels,
	Room1,
	Room2,
	Room3);

function NextRoom()
{
	if(levelCurrent == 0)
	{
		//instance_create_layer(0, 0, "Instances", Obj_Player);
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
}