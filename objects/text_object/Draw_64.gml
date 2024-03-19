var _print = string_copy(display_message, 1, text_progress);

var _l = "";

if (array_length_1d(responses) != 0) {
	for (var i=0; i<array_length_1d(responses); i++) {
		_l += "\n";
		if (i == response_selected) _l += "> ";
		_l += responses[i];
		if (i == response_selected) _l += " <";
	}
}


_p = 20; // Padding.

x1 = 0+_p;
x2 = 1024-_p;

_name_padding = 10;

//_h = 60; // Height.
_h = string_height(speaker + display_message + "\n" + _l) + 10 + _name_padding;

y1 = 640-_h-_p*3;
y2 = 640-_p;


NineSliceBoxStretch(text_box, x1, y1, x2, y2, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_set_font(text_font_bold);
draw_text(x1+_p*1.5, y1+_p, speaker);
draw_set_font(text_font);
draw_text(x1+_p*1.5, y1+_p + _name_padding +(speaker == "" ? 0 : string_height(speaker)), _print);

draw_set_halign(fa_center);
if (array_length_1d(responses) != 0 && text_progress >= string_length(display_message))
	draw_text((x1+x2)/2, y1+_p + _name_padding +string_height(speaker + _print), _l);

draw_set_halign(fa_right);
draw_text(x2-15, y2-25, "(Space to continue).");
