/// @desc Collision
if (!place_meeting(x, y, obj_player)) exit;

// Overwrite
player_add_keys(count);
audio_play_sound(sfx_coin_pickup, 0, false);
instance_destroy();