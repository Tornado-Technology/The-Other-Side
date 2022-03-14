/// @param value
/// @param target
/// @param amout
function approach(val1, val2, amount) {
	if (val1 < val2) return min(val1 + amount, val2); 
	return max(val1 - amount, val2);
}