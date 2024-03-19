{
	draw_set_alpha(image_alpha);

	draw_set_color(c_black);
	draw_rectangle(0,  0, 1024, 640, false);

	var _print = string_copy(starting_message, 1, message_progress);

	draw_set_font(starting_font);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);


	draw_text(30, 90, _print);

	draw_set_font(text_font);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_text(1024-20, 640-20, "(Space to continue).");
	draw_set_alpha(1)
}