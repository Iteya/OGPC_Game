/// @description Insert description here
// You can write your code in this editor
image_xscale = 2
image_yscale = 2
image_speed = 0
if place_meeting(x, y, oPlayer) {
	meelee = oNecromancyStaff
	if !instance_exists(meelee) {
		instance_create_layer(x, y, layer, meelee)
		instance_destroy(self)
		instance_destroy(oPlayer.weapon)
		oPlayer.weapon = meelee
	}
}
