{
    if (instance_exists(text_object))
        return;
    
    if (!place_free(x, y+1)) {
        _vertical_speed = 0;
    
        if (!_sleeping && (keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check_pressed(vk_space)))
            _vertical_speed = -_jump_speed;
    } else {
        if (_vertical_speed < 10)
            _vertical_speed += _gravity;
    }
    if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
        move_contact_solid(0, _speed);
		direction = 0;
        sprite_index = player_right;
		_sleeping = false;
    } else if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
        move_contact_solid(180, _speed);
		direction = 180;
        sprite_index = player_left;
		_sleeping = false;
    } else {
		if (!_sleeping)
			sprite_index = player;
    }

    if (!place_free(x, y+_vertical_speed)) {
        while (place_free(x, y+sign(_vertical_speed)))
            y += sign(_vertical_speed);
        _vertical_speed = 0;
    } else {
		y += _vertical_speed;
	}
}