if !global.gamePause {
event_inherited()
if sprite_index == sSkullSleeping and mode == "attack" {
	sprite_index = sSkull
}
if mode != "idle" {
	mySpeed = clamp(image_speed, 1, oPlayer.Speed)
	image_speed += .0015
}
else {
	impatiance = -1
}


}