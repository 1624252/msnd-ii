function FixOrNot(){
	// Fix, not.
	_selected = argument0;
	/*
	show_debug_message(global.transformed_hippo);
	show_debug_message(global.oberon_love);
	show_debug_message(global.transformed_duck);
	*/
	global.ended = true;
	
	var _title = "";
	var _m = "";
	
	ending_type = noone;
	
	switch (_selected) {
		case 0:
			// Fixed.
			if (global.transformed_hippo || global.oberon_love || global.transformed_duck) {
				// Changes + reverse.
				// Lucid ending.
				ending_type = lucid_ending;
			} else {
				// Traditional ending: all is well.
				ending_type = traditional_ending;
			}
			break;
		case 1:
			// Not fixed.
			if (global.transformed_hippo || global.oberon_love || global.transformed_duck) {
				// Not fixed + changes.
				// Chaotic ending.
				ending_type = chaotic_ending;
			} else {
				// No changes. Shouldn't happen.
				ending_type = traditional_ending;
			}
			break;
	}
	
	instance_create_depth(floor(player_object.x/1024)*1024, floor(player_object.y/640)*640, -bbox_bottom-1000, ending_type);
}