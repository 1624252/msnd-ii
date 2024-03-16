{
    var c = view_get_camera(0);
    
    var new_x = floor(player_object.x / view_x) * view_x;
    
    var new_y = floor(player_object.y / view_y) * view_y;
    
    camera_set_view_pos(c, new_x, new_y);
}