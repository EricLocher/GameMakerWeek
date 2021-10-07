/// @description Insert description here
// You can write your code in this editor


function Summon(){
	random_range(2, 5)
	
	for(var i = 0; i < 5; i++){
		instance_create_layer(x, y, layer, Obj_Skeleton);
	}
}