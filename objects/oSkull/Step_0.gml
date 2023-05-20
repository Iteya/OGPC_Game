if !global.gamePause {
event_inherited()
if sprite_index == sSkullSleeping and mode == "attack" {
	sprite_index = sSkull
	setOnFire(0, 9999999, self)
}
if mode != "idle" {
	mySpeed = clamp(image_speed, 1, oPlayer.Speed)
	image_speed += .0015
	image_angle -= 90
}
else {
	impatiance = -1
}
damage = 3 + ln(image_speed)


}