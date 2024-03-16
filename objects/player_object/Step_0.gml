{
    if (instance_exists(text_object))
        return;
    
    if (place_meeting(x, y+1, block_object)) {
        _vertical_speed = 0;
    
        if (keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space))
            _vertical_speed = -_jump_speed;
    } else {
        if (_vertical_speed < 10)
            _vertical_speed += _gravity;
    }

    if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
        move_contact_solid(0, _speed);
        sprite_index = player_right;
    } else if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
        move_contact_solid(180, _speed);
        sprite_index = player_left;
    } else {
        sprite_index = player;
    }

    if (place_meeting(x, y+_vertical_speed, block_object)) {
        while (!place_meeting(x, y+sign(_vertical_speed), block_object))
            y += sign(_vertical_speed);
        _vertical_speed = 0;
    }

    y += _vertical_speed;
}