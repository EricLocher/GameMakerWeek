level = 0;

allRooms = [
	Room1,
	Room2,
	Room3]

selectedRooms = [
	Room1,
	Room2,
	Room3]

alarm[0] = room_speed * 3;

function NextRoom()
{
	room_goto(selectedRooms[level]);
	level++;
}