{
	if (!ended) {
		if (faded) {
			if (title_progress < string_length(title))
				title_progress += 0.5;
			else
				message_progress += 0.3;

			if (keyboard_check_pressed(vk_space)) {
			    var _message_length = string_length(messages[message_index]);
			    if (message_progress >= _message_length) {
					if (message_index < array_length_1d(messages) - 1) {
						message_index++;
						message_progress = 0;
					} else {
						ended = true;
						room_goto(ChaoticEnding);
						instance_destroy();
					}
			    } else if (message_progress > 2)
			        message_progress = _message_length;
			}
		} else {
			if (image_alpha < 1)
				image_alpha = min(1, image_alpha + 0.01);
			else
				faded = true;
		}
	}
}
