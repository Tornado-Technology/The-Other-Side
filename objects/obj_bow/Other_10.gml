if (!place_meeting(x, y, obj_player)) exit;

player_set_weapon(weapon_get(WEAPON_ID.BOW));

audio_play_sound(sfx_coin_pickup, 0, false);
instance_destroy();