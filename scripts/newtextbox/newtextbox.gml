function NewTextBox(){
    var _object = instance_exists(text_object) ? text_queue_object : text_object;
    with (instance_create_depth(0, 0, -bbox_bottom, _object)) {
        display_message = argument[0];
        origin_instance = instance_exists(other) ? other.id : noone;
		responses = argument_count > 1 ? argument[1] : [];
		response_script = argument_count > 2 ? argument[2] : -1;
    }
}
