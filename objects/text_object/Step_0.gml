if (start) {
	if (array_length_1d(start_end_array) > 0)
		start_end_array[0].sprite_index = start_end_array[1];
	start = false;
}


text_progress += 0.75;

if (array_length_1d(responses) != 0) {
	up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	response_selected += down - up + array_length_1d(responses);
	response_selected %= array_length_1d(responses);
}

if (keyboard_check_pressed(vk_space)) {
    var _message_length = string_length(display_message);
    if (text_progress >= _message_length) {
		show_debug_message("Destroy: " + display_message);
        instance_destroy();
		if (array_length_1d(start_end_array) > 0)
			start_end_array[0].sprite_index = start_end_array[2];
		if (end_function != -1)
			script_execute(end_function);
		
        if (instance_exists(text_queue_object)) {
            with (text_queue_object) {
				ticket--;
				show_debug_message(":" + string(ticket) + " " + display_message);
			}
		}
		
		/*if (ds_queue_size(camera.queue) > 0) {
			ds_queue_dequeue(camera.queue).unqueue();
		}
		*/
		
		if (response_script != -1)
			script_execute(response_script, response_selected);
    } else if (text_progress > 2)
        text_progress = _message_length;
}

