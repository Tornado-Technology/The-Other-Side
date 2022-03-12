depth_sort()

// If bullet is outside room
var short_dist = 10
if (x < - short_dist || x > room_width + short_dist || y < - short_dist || y > room_height + short_dist)
	instance_destroy();