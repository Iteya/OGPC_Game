/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, oPlayer) {
	meelee = oSword6
	if !instance_exists(meelee) {
		instance_create_layer(x, y, layer, meelee)
		//instance_destroy(self)
		instance_destroy(oPlayer.weapon)
		oPlayer.weapon = meelee
	}
}
