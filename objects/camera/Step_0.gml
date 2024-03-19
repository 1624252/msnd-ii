{
    var c = view_get_camera(0);
    
    var new_x = floor(player_object.x / view_x);
    
    var new_y = floor(player_object.y / view_y);
    
    camera_set_view_pos(c, new_x * view_x, new_y * view_y);

	
	if (!instance_exists(text_object) && new_x == 1 && new_y == 0 && (current_room[0] == 0 && current_room[1] == 0)) {
		// Second.
		if (array_length_1d(sub_rooms.start2) > 0) {
			for (var i=0; i<array_length_1d(sub_rooms.start2); i++)
				NewTextBox(sub_rooms.start2[i], [], -1, "Puck");
		}
	}
	
	current_room = [new_x, new_y];
}