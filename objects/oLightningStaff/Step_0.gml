/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left)
	{
		prepped = true
	}
if image_index == 14 and prepped
	{
		boltAngle = image_angle - 45
		boltsMade = 0
		shoot = true
		prepped = false
	}
// Inherit the parent event
event_inherited();

