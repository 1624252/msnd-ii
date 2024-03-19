_radius = 20;

found_entity = instance_place(x+lengthdir_x(_radius, direction), y+lengthdir_y(_radius, direction), parent_entity);
if (found_entity != noone) {
	if (keyboard_check_pressed(ord("E")) && found_entity.activate_script != -1) {
		ScriptExecuteArray(found_entity.activate_script, found_entity.activate_args);
	} else {
		draw_set_font(text_font);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		var new_x = x % 1024;
		var new_y = y % 1024 - 20;
		
		if (new_x < 10) new_x = 10;
		if (new_x > 800) new_x = 800;
		draw_text(new_x, new_y, "(Press \"E\" to interact).");
	}
}
