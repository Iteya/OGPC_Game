// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_on_fire(xpos, ypos, time, dmg){
	global.fireDamage = dmg
	global.time = time
	instance_create_layer(xpos, ypos, "Farground"
}