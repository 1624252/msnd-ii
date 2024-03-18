{
	if (!displayed) {
		message_progress += 0.5;

		if (keyboard_check_pressed(vk_space)) {
		    var _message_length = string_length(starting_message);
		    if (message_progress >= _message_length) {
				displayed = true;
		    } else if (message_progress > 2)
		        message_progress = _message_length;
		}
	} else {
		if (image_alpha > 0)
			image_alpha = max(0, image_alpha - 0.01);
		else
			instance_destroy();
	}
}
