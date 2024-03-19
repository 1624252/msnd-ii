function Wrap(){
	_message = argument0;
	_width = 103;
	
	_new_message = "";
	
	_i = 1;
	
	_words = SplitString(_message, " ");
	
	for (var i=0; i<array_length_1d(_words); i++) {
		if (string_pos("\n", _words[i]) != 0) {
			_i = string_length(_new_message);
		}
		if (string_length(_words[i]) + 1 + string_length(_new_message) - _i > 103) {
			_new_message += "\n";
			_i = string_length(_new_message);
		} else {
			if (i != 0)
				_new_message += " ";
		}
		_new_message += _words[i];
	}
	
	return _new_message;
}
