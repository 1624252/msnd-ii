// Fixed oddly.
function LoversLeave(){
	//(Lysander and Demetrius chase into the forest) 
	lysander_object.run = true;
	demetrius_object.run = true;
	//(Hermia chases Helena and attacks her as a duck- yells quack) 
	NewTextBox("Quack!", [], -1, "Duck Hermia");
	hermia_object.run = true;
	helena_object.run = true;
	
	if (global.transformed_hippo || global.oberon_love || global.transformed_duck)
		NewTextBox("Haha! What fun it do be—that to which mere mortals present me. What fun this dream has been, and what trouble I have made. Now... shall I fix everything?", ["Reverse all mischief.", "Leave the chaos as is."], FixOrNot, "Puck", [], -1, text_queue_object, 2);
	else
		FixOrNot(0);
}