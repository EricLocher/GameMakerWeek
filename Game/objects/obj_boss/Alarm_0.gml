show_debug_message("ASDAKWJK");

var _select = random_range(1, 3);

_temp = instance_find(Obj_SummonSpot, 0);
_temp.Summon();
_temp = instance_find(Obj_SummonSpot, 1);
_temp.Summon();
_temp = instance_find(Obj_SummonSpot, 2);
_temp.Summon();

//alarm[0] = random_range(1, 10) * room_speed;