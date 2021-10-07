hover = false;

function IsClicked()
{
	if(button == "Start")
	{
		with(Obj_RoomController)
		{
			NextRoom();
		}
	}
	else if(button == "Exit")
	{
		game_end();
	}
}