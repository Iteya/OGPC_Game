/// @description Insert description here
// You can write your code in this editor
//pickup code(add in delete code once done testing)
if place_meeting(x, y, oPlayer) {
	meelee = choose(oSword1, oSword2, oSword3, oSword4, oSword5, oSword6, oSword7, oSword8, oSword13)
	if !instance_exists(meelee) {
		instance_create_layer(x, y, layer, meelee)
		//instance_destroy(self)
		instance_destroy(oPlayer.weapon)
		oPlayer.weapon = meelee
		oPlayer.x += 24
	}
}

