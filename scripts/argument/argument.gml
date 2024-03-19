
function Argument(){
	NewTextBox("I pray you, though you mock me, gentlemen,\nLet her not hurt me. I was never curst;\nI have no gift at all in shrewishness.\nI am a right maid for my cowardice.\nLet her not strike me. You perhaps may think,\nBecause she is something lower than myself,\nThat I can match her.", [], -1, "Helena", [helena_object, helena_angry, helena]);
	NewTextBox("\"Lower\"? Hark, again!", [], -1, "Hermia", [hermia_object, hermia_angry, hermia]);
	NewTextBox("Good Hermia, do not be so bitter with me.\nI evermore did love you, Hermia,\nDid ever keep your counsels, never wronged you—\nSave that, in love unto Demetrius,\nI told him of your stealth unto this wood.\nHe followed you; for love, I followed him.\nBut he hath chid me hence and threatened me\nTo strike me, spurn me, nay, to kill me too.\nAnd now, so you will let me quiet go,\nTo Athens will I bear my folly back\nAnd follow you no further. Let me go.\nYou see how simple and how fond I am.", [], -1, "Helena", [helena_object, helena_angry, helena]);
	NewTextBox("Why, get you gone. Who is 't that hinders you?", [], -1, "Hermia", [hermia_object, hermia_angry, hermia]);
	NewTextBox("A foolish heart that I leave here behind.", [], -1, "Helena", [helena_object, helena_angry, helena]);
	NewTextBox("What, with Lysander?", [], -1, "Hermia", [hermia_object, hermia_angry, hermia]);
	NewTextBox("With Demetrius.", [], -1, "Helena", [helena_object, helena_angry, helena]);
	NewTextBox("Be not afraid. She shall not harm thee, Helena.", [], -1, "Lysander", [lysander_object, lysander_angry, lysander]);
	NewTextBox("No, sir, she shall not, though you take her part.", [], -1, "Demetrius", [demetrius_object, demetrius_angry, demetrius]);
	NewTextBox("O, when she is angry, she is keen and shrewd.\nShe was a vixen when she went to school,\nAnd though she be but little, she is fierce.", [], -1, "Helena", [helena_object, helena_angry, helena]);
	NewTextBox("\"Little\" again? Nothing but \"low\" and \"little\"?\nWhy will you suffer her to flout me thus?\nLet me come to her.", [], -1, "Hermia", [hermia_object, hermia_angry, hermia]);
	
	NewTextBox("Shortness held in contempt what ere he neglects. Noticing finer details which blind love prevents. Ridiculous to see, preposterous indeed. Quarrelsome nonsense to which false love falsely breeds. What more is to be in such absurdity?", ["Transform.", "Don't transform."], DuckResponse, "Puck");
}
