if !global.gamePause {
if mouse_check_button_pressed(mb_left)
	{
		shoot = true
		global.shardsCreated = 0
	}

// Inherit the parent event
event_inherited();

}