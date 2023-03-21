/// @description Insert description here
// You can write your code in this editor

timer -= 1/30
if timer < 0
	{
		target.isOnFire = false
		instance_destroy(self)
	}
else {target.Health -= firedmg}






