function TitaniaResponse(){
	//  ["Duck.","Balloon.", "Fish.", "dsklfjds"].
	_selected = argument0;
	show_debug_message(_selected);
	switch (_selected) {
		case 0:
			NewTextBox("Quack.");
			break;
		case 1:
			NewTextBox("Ryan probably said that's not an animal.");
			break;
		case 2:
			NewTextBox("Fish.");
			break;
		case 3:
			NewTextBox("dslkfjdsklfjdsljdskfljkdsfjdlskjfkdsfjsdklfsdlkfj\nsdklfjdsjfsldkfjdslkfjdslkfjdslfkjdsklf\nsdkljfdsjfldskjfldskjlsdkfjsdklfjdsl\nsdljfskldjfkldsjfl\nsldkjflskdjfldksfjldksfjldskfjdlskfjds\nsdlkfjdslkfjdslkfjdlskfjsdklf\nsdlkfjldskjfdsklfjldskfjdslkfjds\nslkdjfldskjflskdjfdlskfjdslkfjdsk\nsldkfldskjfkdslf");
			NewTextBox("skldjfldskjfldskfjlsdkfjsldkfjsldkfdslfjdkslfjdsklfj\nlsdkfldskfjldskfldskfjldskjfkldsfdslkf\nsdlkfjlskdjfldskjflksjdflkdjsf\nsdlkfjdlksfjlskdjflkdsjflkdsj\nsldkfjdslkfjkldsjfldskjfkldsj\nlskdjflksdjfdskljflkdsjflkdsj\nsdlkfdklfjskldjfklds\nsldkjfkldsfjldksfjdkslfj\nsdlkfjdsklfjkdslfjkldsjfkds\ndsklfjkdsljfksd");
			break;
	}
}