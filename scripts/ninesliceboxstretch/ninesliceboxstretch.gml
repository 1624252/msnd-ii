// NineSliceBoxStretch(sprite, x1, y1, x2, y2, image_index);

function NineSliceBoxStretch(){
    var _size = sprite_get_width(argument0) / 3;
    var _x1 = argument1;
    var _y1 = argument2;
    var _x2 = argument3;
    var _y2 = argument4;
    var _index = argument5;
    var _width = _x2 - _x1;
    var _height = _y2 - _y1;
    
    // Middle.
    draw_sprite_part_ext(argument0, _index, _size, _size, 1, 1, _x1+_size, _y1+_size, _width-_size*2, _height-_size*2, c_white, 1);
    
    // Corners.
    // Top left.
    draw_sprite_part(argument0, _index, 0, 0, _size, _size, _x1, _y1);
    // Top right.
    draw_sprite_part(argument0, _index, _size*2, 0, _size, _size, _x1+_width-_size, _y1);
    // Bottom left.
    draw_sprite_part(argument0, _index, 0, _size*2, _size, _size, _x1, _y1+_height-_size);
    // Bottom right.
    draw_sprite_part(argument0, _index, _size*2, _size*2, _size, _size, _x1+_width-_size, _y1+_height-_size);
    
    // Edges.
    // Left.
    draw_sprite_part_ext(argument0, _index, 0, _size, _size, 1, _x1, _y1+_size, 1, _height-_size*2, c_white, 1);
    // Right.
    draw_sprite_part_ext(argument0, _index, _size*2, _size, _size, 1, _x1+_width-_size, _y1+_size, 1, _height-_size*2, c_white, 1);
    // Top.
    draw_sprite_part_ext(argument0, _index, _size, 0, 1, _size, _x1+_size, _y1, _width-_size*2, 1, c_white, 1);
    // Bottom.
    draw_sprite_part_ext(argument0, _index, _size, _size*2, 1, _size, _x1+_size, _y1+_height-_size, _width-_size*2, 1, c_white, 1);
    
}
