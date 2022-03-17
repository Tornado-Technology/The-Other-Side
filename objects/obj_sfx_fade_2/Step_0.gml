alpha = approach(alpha, 0, 0.005);
audio_stop_all();


if (!variable_global_exists("enemy_kills")) {
	global.enemy_kills = 0;
}

try {
	var _highscore_challenge = "34esa3a1-e41e-4a9f-aaaa-4da7bd24ada2";
	if (gxc_get_query_param("challenge") == _highscore_challenge) {
	 	gxc_challenge_submit_score(global.enemy_kills, function(_err) { 
			show_debug_message(_err);
		});
	}
} catch(_err) {
	show_debug_message(_err);
}



if (alpha == 0) instance_destroy();