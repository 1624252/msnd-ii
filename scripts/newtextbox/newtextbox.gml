function NewTextBox(){
    var _object = instance_exists(text_object) ? text_queue_object : text_object;
    with (instance_create_depth(0, 0, -bbox_bottom, _object)) {
        display_message = Wrap(argument[0]);
        origin_instance = instance_exists(other) ? other.id : noone;
		responses = argument_count > 1 ? argument[1] : [];
		response_script = argument_count > 2 ? argument[2] : -1;
		speaker = argument_count > 3 ? argument[3] + "\n" : "";
		start_end_array = argument_count > 4 ? argument[4] : [];
		end_function = argument_count > 5 ? argument[5] : -1;
    }
}
