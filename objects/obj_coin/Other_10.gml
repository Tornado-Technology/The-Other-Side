/// @desc Collision
if (!place_meeting(x, y, obj_player)) exit;
player_add_money(count * rare);
audio_play_sound(sfx_coin_pickup, 0, false);
instance_destroy();