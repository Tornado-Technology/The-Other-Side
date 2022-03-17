/// @desc Collision
if (!place_meeting(x, y, obj_player)) exit;
global.pice_of_slime = true;
// Overwrite
audio_play_sound(sfx_key_pickup, 0, false);
instance_destroy();