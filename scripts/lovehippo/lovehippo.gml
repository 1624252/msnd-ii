function LoveHippo(){
	// Leave, anoint.
	_selected = argument0;
	switch (_selected) {
		case 0:
			oberon_sleeping_object.activate_args = ["I shall not disturb my king.", [], -1, "Puck"];
			break;
		case 1:
			global.oberon_love = true;
			NewTextBox("My king! Forgive my devising of such a sin. But conceiving has never been a crime. For though thoughts have always trickled down to dreams, what is dreamt remains hidden within my mind. Fret not for such transgressive thoughts, for never have I mistake, what lord perceived in mind's eye with that of the realest take.", [], -1, "Puck");
			NewTextBox("Forgive and forget, indeed, for now I shalt do upon the deed.", [], -1, "Puck", [oberon_sleeping_object, oberon_sleeping, oberon_sleeping_anointed]);
			oberon_sleeping_object.activate_args = ["The deed is done. I shall continue onwards.", [], -1, "Puck"];
			break;
	}
}