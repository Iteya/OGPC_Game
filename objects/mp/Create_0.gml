data = layer_tilemap_get_id(layer_get_id("Wall"))
global.grid = mp_grid_create(0, 0, room_width / 64, room_height / 64, 64, 64)
for (var i = 0; i < room_width; i++) {
	for (var j = 0; j < room_height; j++) {
		if tilemap_get_at_pixel(data, i, j) == 1 {
			mp_grid_add_cell(global.grid, i, j)
		}
	}
}