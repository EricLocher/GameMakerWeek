/// @description Health
draw_sprite_stretched(Spr_Health, 1, 0, 0, 64, 64);
draw_sprite_stretched(Spr_Health, 1, 64, 0, 64, 64);
draw_sprite_stretched(Spr_Health, 1, 128, 0, 64, 64);

if(playerHealth > 0)
	draw_sprite_stretched(Spr_Health, 0, 0, 0, 64, 64);

if(playerHealth > 1)
	draw_sprite_stretched(Spr_Health, 0, 64, 0, 64, 64);
	
if(playerHealth > 2)
	draw_sprite_stretched(Spr_Health, 0, 128, 0, 64, 64);