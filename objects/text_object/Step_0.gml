text_progress += 0.75;

if (keyboard_check_pressed(vk_space)) {
    var _message_length = string_length(display_message);
    if (text_progress >= _message_length) {
        instance_destroy();
        if (instance_exists(text_queue_object))
            with (text_queue_object) ticket--;
    } else if (text_progress > 2)
        text_progress = _message_length;
}