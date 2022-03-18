/// @desc Collision
if (!place_meeting(x, y, obj_player)) exit;

// Overwrite
player_add_stabelizers(count);
audio_play_sound(sfx_stabilizer, 0, false);
instance_destroy();