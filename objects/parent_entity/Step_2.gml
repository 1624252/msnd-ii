//collision_map = layer_tilemap_get_id(layer_get_id("Col"));

if (run) {
	x = lerp(x, floor(x/1024)*1024+1024+200, progress);
	progress += 0.0005;
	
	if (progress > 1)
		instance_destroy();
}
