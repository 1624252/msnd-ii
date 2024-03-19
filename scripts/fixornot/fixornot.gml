function FixOrNot(){
	// Fix, not.
	_selected = argument0;
	/*
	show_debug_message(camera.transformed_hippo);
	show_debug_message(camera.oberon_love);
	show_debug_message(camera.transformed_duck);
	*/
	
	var _title = "";
	var _m = "";
	
	ending_type = noone;
	
	switch (_selected) {
		case 0:
			// Fixed.
			if (camera.transformed_hippo || camera.oberon_love || camera.transformed_duck) {
				// Changes + reverse.
				// Lucid ending.
				ending_type = lucid_ending;
			} else {
				// Traditional ending: all is well.
				ending_type = traditional_ending;
			}
		case 1:
			// Not fixed.
			if (camera.transformed_hippo || camera.oberon_love || camera.transformed_duck) {
				// Not fixed + changes.
				// Chaotic ending.
				ending_type = chaotic_ending;
			} else {
				// No changes. Shouldn't happen.
				ending_type = traditional_ending;
			}
	}
	
	instance_create_depth(0, 0, -bbox_bottom, ending_type);
}