{
    if (instance_exists(text_object))
        return;
    
    if (!place_free(x, y+1)) {
        _vertical_speed = 0;
    
        if (keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check_pressed(vk_space))
            _vertical_speed = -_jump_speed;
    } else {
        if (_vertical_speed < 10)
            _vertical_speed += _gravity;
    }
    if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
        move_contact_solid(0, _speed);
		direction = 0;
        sprite_index = player_right;
    } else if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
        move_contact_solid(180, _speed);
		direction = 180;
        sprite_index = player_left;
    } else {
        sprite_index = player;
    }

    if (!place_free(x, y+_vertical_speed)) {
        while (place_free(x, y+sign(_vertical_speed)))
            y += sign(_vertical_speed);
        _vertical_speed = 0;
    } else {
		y += _vertical_speed;
	}
	
	/*
	found_entity = instance_place(x+lengthdir_x(15, direction), y+lengthdir_y(15, direction), parent_entity);
	if (found_entity != noone) {
		show_debug_message("1");
		if (keyboard_check_pressed(ord("E")) && found_entity.activate_script != -1) {
			ScriptExecuteArray(found_entity.activate_script, found_entity.activate_args);
		} else {
			show_debug_message("dsklfjldsf");
			draw_set_font(text_font);
			draw_set_color(c_white);
			draw_text(x, y, "(Press \"E\" to interact).");
		}
	}
	*/
}