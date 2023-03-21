// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setOnFire(argument0, argument1, argument2) {
	global.fireDamage = argument0
	global.fireTime = argument1
	global.fireTarget = argument2
	if argument2.onFire == false //make sure it isn't already taking persistent fire damage
		{
			instance_create_layer(argument2.x, argument2.y, "Farground", oFireAuraBack)
			argument2.onFire = true
		}
}