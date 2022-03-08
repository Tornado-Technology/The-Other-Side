/// @param r
/// @param g
/// @param b
/// @param a
function Vector4(_r = 1.0, _g = 1.0, _b = 1.0, _a = 1.0) constructor {
	r = _r;
	g = _g;
	b = _b;
	a = _a;
	
	static white = function() {
		r = 1.0;
		g = 1.0;
		b = 1.0;
		return self;
	}
}