if (!variable_global_exists("enemy_kills")) {
	global.enemy_kills = 0;
}

try {
	var _highscore_challenge = "2e6e9c6d-64fd-4d60-996f-a4f94fb767de";
	if (gxc_get_query_param("challenge") == _highscore_challenge) {
	 	gxc_challenge_submit_score(global.enemy_kills, function(_err) { 
			show_debug_message(_err);
		});
	}
} catch(_err) {
	show_debug_message(_err);
}

game_restart();