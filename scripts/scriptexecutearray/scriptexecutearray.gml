function ScriptExecuteArray() {
	var scr = argument0;
	var args = argument1;
	switch (array_length_1d(args)) {
		case 1: return script_execute(scr, args[0]);
		case 2: return script_execute(scr, args[0], args[1]);
		case 3: return script_execute(scr, args[0], args[1], args[2]);
		case 4: return script_execute(scr, args[0], args[1], args[2], args[3]);
		case 5: return script_execute(scr, args[0], args[1], args[2], args[3], args[4]);
	}
}