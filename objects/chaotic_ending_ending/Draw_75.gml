{
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_white);

	draw_set_font(bold_font);
	draw_text(1024/2, 90, "Chaotic Ending");
	draw_set_font(large_font);
	draw_text(1024/2, 150, "Something's not right...");
	
	/*
	show_debug_message(camera.transformed_hippo);
	show_debug_message(camera.oberon_love);
	show_debug_message(camera.transformed_duck);
	*/
}