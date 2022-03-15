/// @desc Collision
if (!place_meeting(x, y, obj_player)) exit;
player_add_hp();
audio_play_sound(sfx_bottle_pickup, 0, false);
instance_destroy();