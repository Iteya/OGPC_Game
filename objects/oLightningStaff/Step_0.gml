/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left)
	{
		prepped = true
	}
if image_index == 14 and prepped
	{
		shoot = true
		prepped = false
		boltAngle = image_angle
	}
// Inherit the parent event
event_inherited();

