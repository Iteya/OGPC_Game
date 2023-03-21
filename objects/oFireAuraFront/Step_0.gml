/// @description Insert description here
// You can write your code in this editor


if variable_instance_exists(pair, oFireAuraBack)
	{
		x = variable_instance_get(pair, oFireAuraBack).x
		y = variable_instance_get(pair, oFireAuraBack).y
	}
else {instance_destroy(self)}