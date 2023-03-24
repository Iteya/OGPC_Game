// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setOnFire(argument0, argument1, argument2) { // (How much damage per step, how many steps to set them on fire for, the object/instance to ignite)
	if argument2.onFire == false //make sure it isn't already taking persistent fire damage
		{
			argument2.onFire = true
			argument2.ourFireDamage = argument0
			argument2.fireTime = argument1
		}
}