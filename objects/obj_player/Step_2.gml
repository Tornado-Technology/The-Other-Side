if (speed_v > 0 && speed_v != 0) dir = DIR.DOWN; else dir = DIR.UP;
if (speed_h > 0 && speed_h != 0) dir = DIR.LEFT; else dir = DIR.RIGHT;

var offset = 15;
switch (dir) {
	case DIR.UP:
		weapon_x = x + offset;
		weapon_y = y + offset;
		break;
	
	case DIR.DOWN:
		weapon_x = x - offset;
		weapon_y = y - offset;
		break;
	
	case DIR.RIGHT:
		weapon_x = x - offset;
		weapon_y = y + offset;
		break;
		
	case DIR.LEFT:
		weapon_x = x + offset;
		weapon_y = y - offset;
		break;
}