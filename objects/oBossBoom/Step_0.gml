/// @description Insert description here
// You can write your code in this editor
if image_index > image_number - 1 {
	instance_destroy(self)
}
if place_meeting(x, y, oPlayer) && oPlayer.invincible <= 0 {
	oPlayer.Health -= damage
	oPlayer.invincible ++
}