function NewTextBox(){
    var _object = instance_exists(text_object) ? text_queue_object : text_object;
    with (instance_create_layer(0, 0, "Instances", _object)) {
        display_message = argument[0];
        origin_instance = instance_exists(other) ? other.id : noone;
        background = argument_count > 1 ? argument[1] : 1;
    }
}