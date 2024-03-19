function TitaniaResponseTransform(){
	// Transform Bottom, Transform Titania.
	_selected = argument0;
	switch (_selected) {
		case 0:
			NewTextBox("Onward!", [], -1, "Puck");
			bottom_object.activate_args = ["A stranger Pyramus than e'er played here.\nI'll follow you. I'll lead you about a round,\nThrough bog, through bush, through brake,\nthrough brier.\nSometime a horse I'll be, sometime a hound,\nA hog, a headless bear, sometime a fire,\nAnd neigh and bark and grunt and roar and burn,\nLike horse, hound, hog, bear, fire, at every turn.", [], -1, "Puck", [], ContinueBottom];
			titania_sleeping_object.activate_args = ["I shall not disturb my queen.", [], -1, "Puck"];
			break;
		case 1:
			NewTextBox("Aha! Thy queen 'tis to be, for what greater revenge be but one beyond petty. A more distressing case of royal dignity shall never behold, than turning thy fairies most favored queen into a hippo.", [], -1, "Puck", [titania_sleeping_object, titania_sleeping, titania_hippo]);
			
			bottom_object.activate_args = ["I already made my choice. Only onwards have I left to go.", [], -1, "Puck"];
			titania_sleeping_object.activate_args = ["The deed is done. I shall continue onwards.", [], -1, "Puck"];
			oberon_sleeping_object.activate_args = ["Anon! I will be graced by my liege when he dotes upon my gift. Make her fall for that peasant now, that will bridge the nuptial rift. Further dare I go? Only in dreams to a territory where sense isn't known.", ["Leave peacefully.", "Aniont herb to make Oberon fall in love with Hippo Titania."], LoveHippo, "Puck"];
			break;
	}
}