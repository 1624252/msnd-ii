{
	draw_set_alpha(image_alpha);

	//draw_set_color(c_black);
	//draw_rectangle(0,  0, 1024, 640, false);
	
	var _print_title = string_copy(title, 1, title_progress);
	var _print = string_copy(messages[message_index], 1, message_progress);

	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_white);

	if (faded) {
		draw_set_font(bold_font);
		draw_text(1024/2, 90, _print_title);
		
		if (!ended) {
			draw_set_font(large_font);
			draw_text(1024/2, 280, _print);
		
			draw_set_font(text_font);
			draw_set_halign(fa_right);
			draw_set_valign(fa_bottom);
			draw_text(1024-20, 640-20, "(Space to continue).");
		}
	}
	
	draw_set_alpha(1)
}