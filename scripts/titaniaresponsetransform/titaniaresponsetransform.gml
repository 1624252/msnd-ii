function TitaniaResponseTransform(){
	// Transform Bottom, Transform Titania.
	_selected = argument0;
	switch (_selected) {
		case 0:
			NewTextBox("Onward!", [], -1, "Puck");
			titania_sleeping_object.activate_args = ["Onward to find Bottom!", [], -1, "Puck"];
			break;
		case 1:
			NewTextBox("Aha! Thy queen 'tis to be, for what greater revenge be but one beyond petty. A more distressing case of royal dignity shall never behold, than turning thy fairies most favored queen into a hippo.", [], -1, "Puck", [titania_sleeping_object, titania_sleeping, titania_hippo]);
			
			oberon_sleeping_object.activate_args = ["Anon! I will be graced by my liege when he dotes upon my gift. Make her fall for that peasant now, that will bridge the nuptial rift. Further dare I go? Only in dreams to a territory where sense isn't known.", ["Leave peacefully.", "Aniont herb to make Oberon fall in love with Hippo Titania."], LoveHippo, "Puck"];
			break;
	}
}