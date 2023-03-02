/// @description Insert description here
// You can write your code in this editor
//pickup code(add in delete code once done testing)
if place_meeting(x, y, oPlayer) {
	if !instance_exists(oSword) {
		instance_create_layer(x, y, layer, oSword)
		//instance_destroy(self)
		instance_destroy(oStaff)
	}
}

oPlayer.weapon = oSword