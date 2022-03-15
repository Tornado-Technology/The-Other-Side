if (!place_meeting(x, y, obj_player)) exit;
player_set_weapon(weapon_get(item));
audio_play_sound(sound, 0, false);
instance_destroy();