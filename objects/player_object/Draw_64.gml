_radius = 20;

found_entity = instance_place(x+lengthdir_x(_radius, direction), y+lengthdir_y(_radius, direction), parent_entity);
if (found_entity != noone) {
	if (keyboard_check_pressed(ord("E")) && found_entity.activate_script != -1) {
		ScriptExecuteArray(found_entity.activate_script, found_entity.activate_args);
		_interval = 107;
	} else {
		draw_set_font(text_font);
		draw_set_color(c_white);
		var new_x = x % 1024 + _interval;
		var new_y = y % 1024 - 20;
		
		if (new_x < 10+_interval) new_x = 10+_interval;
		if (new_x > 800+_interval) new_x = 800+_interval;
		draw_text(new_x, new_y, "(Press \"E\" to interact).");
	}
}
