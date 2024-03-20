
function TraditionalEnding(){
	if (global.transformed_hippo || global.oberon_love || global.transformed_duck)
		NewTextBox("Haha! What fun it do be—that to which mere mortals present me. What fun this dream has been, and what trouble I have made. Now... shall I fix everything?", ["Reverse all mischief.", "Leave the chaos as is."], FixOrNot, "Puck");
	else
		FixOrNot(0);
}