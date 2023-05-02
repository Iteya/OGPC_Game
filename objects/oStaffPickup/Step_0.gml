/// @description Insert description here
// You can write your code in this editor

//pickup code(add in delete code once done testing
if place_meeting(x, y, oPlayer) {
	chosen = choose(oLightningStaff)
	if !instance_exists(chosen) {
		instance_create_layer(x, y, layer, chosen)
		//instance_destroy(self)
		instance_destroy(oPlayer.weapon)
		oPlayer.weapon = chosen
	}
}

