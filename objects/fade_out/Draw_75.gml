{

	draw_set_color(c_black);
	draw_rectangle(0,  0, 1024, 640, false);

	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_white);

	draw_set_font(bold_font);
	draw_text(1024/2, 90, _title);
	
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(larger_font);
	draw_set_alpha(image_alpha);
	draw_text(1024/2, 640/2, "The End.");
	draw_set_alpha(1)
}