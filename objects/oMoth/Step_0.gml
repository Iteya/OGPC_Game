event_inherited()
if mode == "idle" {
	sprite_index = sMothUp
}
else {
	if mode == "attack" {
		sprite_index = sMothDown
	}
	image_angle += 90
}