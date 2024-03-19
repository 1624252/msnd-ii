
function ContinueBottom(){
	NewTextBox("I see their knavery. This is to make an ass of me, to fright me, if they could. But I will not stir from this place, do what they can. I will walk up and down here, and I will sing, that they shall hear I am not afraid.", [], -1, "Bottom");
	NewTextBox("What angel wakes me from my flow'ry bed?", [], -1, "Titania", [titania_sleeping_object, titania_awake, titania_awake]);
	/*// Twice for some reason.
	NewTextBox("What angel wakes me from my flow'ry bed?", [], -1, "Titania", [titania_sleeping_object, titania_awake, titania_awake]);
	NewTextBox("What angel wakes me from my flow'ry bed?", [], -1, "Titania", [titania_sleeping_object, titania_awake, titania_awake]);
	*/
	NewTextBox("...", [], -1, "Bottom");
	bottom_object.activate_args = ["The deed is done. I shall continue onwards.", [], -1, "Puck"];
}