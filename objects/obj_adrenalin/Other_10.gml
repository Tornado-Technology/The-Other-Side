if (!place_meeting(x, y, obj_player)) exit;
player_adrenalin(count);
audio_play_sound(sfx_adrenalin_pickup, 0, false);
instance_destroy();