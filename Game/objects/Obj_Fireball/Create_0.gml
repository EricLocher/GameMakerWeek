collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

velX = 0;
velY = 0;
accX = 0;
accY = 0;

size = 0;

alarm[0] = room_speed * 6;

audio_play_sound(Sou_Fireball, 1, false);