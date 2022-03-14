#macro c_wood new Vector4()
#macro c_silv new Vector4(0.7, 0.7, 0.7)
#macro c_gold new Vector4(1, 1, 0)
#macro c_electrum new Vector4(0.53, 0.13, 0.7)

enum RARE_ID {
	WOOD,
	SILVER,
	GOLD,
	ELECTRUM
}

// Rare ID
function rare_get_color(_id) {
	switch (_id) {
		case RARE_ID.WOOD:
			return c_wood;
			break;
		
		case RARE_ID.SILVER:
			return c_silv;
			break;
			
		case RARE_ID.GOLD:
			return c_gold;
			break;
			
		case RARE_ID.ELECTRUM:
			return c_electrum;
			break;
	}
}