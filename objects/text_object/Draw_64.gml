NineSliceBoxStretch(text_box, x1, y1, x2, y2, 0);
draw_set_font(text_font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _print = string_copy(display_message, 1, text_progress);
draw_text((x1+x2)/2, y1+12, _print);


draw_text(x2-85, y2-25, "(Space to continue).");