var _print = string_copy(display_message, 1, text_progress);

var _l = "";

if (array_length_1d(responses) != 0) {
	_l += "\n";
	for (var i=0; i<array_length_1d(responses); i++) {
		_l += "\n";
		if (i == response_selected) _l += "> ";
		_l += responses[i];
		if (i == response_selected) _l += " <";
	}
}

if (array_length_1d(responses) != 0 && text_progress >= string_length(display_message))
	_print += _l;



_p = 20; // Padding.
//_h = 60; // Height.
_h = string_height(display_message + _l) + 5;

x1 = 0+_p;
y1 = 640-_h-_p*2;
x2 = 1024-_p;
y2 = 640-_p;


NineSliceBoxStretch(text_box, x1, y1, x2, y2, 0);
draw_set_font(text_font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);


draw_text((x1+x2)/2, y1+12, _print);
draw_text(x2-90, y2-25, "(Space to continue).");