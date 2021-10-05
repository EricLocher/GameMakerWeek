/// @description Health
draw_sprite_stretched(Spr_Health, 1, 0, 0, 32, 32);
draw_sprite_stretched(Spr_Health, 1, 32, 0, 32, 32);
draw_sprite_stretched(Spr_Health, 1, 64, 0, 32, 32);

if(playerHealth > 0)
	draw_sprite_stretched(Spr_Health, 0, 0, 0, 32, 32);

if(playerHealth > 1)
	draw_sprite_stretched(Spr_Health, 0, 32, 0, 32, 32);
	
if(playerHealth > 2)
	draw_sprite_stretched(Spr_Health, 0, 64, 0, 32, 32);