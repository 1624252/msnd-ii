
function DuckResponse(){
	// Transform, Don't transform.
	_selected = argument0;
	
	switch (_selected) {
		case 0:
			camera.transformed_duck = true;
			hermia_object.sprite_index = hermia_duck;
			audio_play_sound(duck_audio, 0, 0);
			NewTextBox("*Music.*", [], -1, "", [], EndDuck);
			NewTextBox("A duck? Wherefore, to which Hermia lies, that wicked women reeking an envy no magic doth disguise.", [], -1, "Lysander", [lysander_object, lysander_angry, lysander]);
			NewTextBox("Incessant hate ought to consume thee, casting wretched curses upon the duck you see.", [], -1, "Demetrius", [demetrius_object, demetrius_angry, demetrius]);
			NewTextBox("Hark, this cannot be!", [], -1, "Lysander", [lysander_object, lysander_angry, lysander]);
			NewTextBox("Quack?", [], -1, "Duck Hermia", [hermia_object, hermia_duck_talking, hermia_duck]);
			NewTextBox("Shorter with age, she seemeth be. Now, take your love, and be off from me.", [], -1, "Helena", [helena_object, helena_angry, helena]);
			NewTextBox("Fair Helena, what can compare, when pristine lilies do no justice to your eyes. That shimmer the stars do envy and Nyx of the night dare not disguise.", [], -1, "Demetrius", [demetrius_object, demetrius_angry, demetrius]);
			NewTextBox("A duck, history oft tells. Dare you to brag about the dignity held by the Hermia's noble plumage, or is mocking a maiden more fun than caring about your translated love.", [], -1, "Helena", [helena_object, helena_angry, helena]);
			NewTextBox("Translated indeed, for the past is gone, changing with the maturing time.", [], -1, "Lysander", [lysander_object, lysander_angry, lysander]);
			NewTextBox("Thy love, beautiful Helena, I have since forsworn. I leave behind poor Hermia to those whose statures are more befitting.", [], -1, "Demetrius", [demetrius_object, demetrius_angry, demetrius]);
			NewTextBox("You dare imply!", [], -1, "Lysander", [lysander_object, lysander_angry, lysander]);
			NewTextBox("So speaks the perpetrator of the crime.", [], -1, "Demetrius", [demetrius_object, demetrius_angry, demetrius]);
			NewTextBox("Hark, again!", [], -1, "Lysander", [lysander_object, lysander_angry, lysander], LoversLeave);
			break;
		case 1:
			NewTextBox("Get you gone, you dwarf,\nYou minimus of hind'ring knotgrass made,\nYou bead, you acorn—", [], -1, "Lysander", [lysander_object, lysander_angry, lysander]);
			break;
	}
	// Don't need to reset because they run off.
}