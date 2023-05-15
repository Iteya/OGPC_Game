/// @description Insert description here
// You can write your code in this editor
if !global.gamePause {
	event_inherited()
	if keyboard_check_pressed(ord("R")) {
		game_restart()
	}
	#region movement
	xRight = keyboard_check(ord("D"))
	xLeft = keyboard_check(ord("A"))
	xDirection = xRight - xLeft
	xVector = Speed * xDirection
	
	xdata = tilemap_get_at_pixel(map_id, x + xVector, y)
	if xdata == 1 {
		x += xVector
	}

	yDown = keyboard_check(ord("S"))
	yUp = keyboard_check(ord("W"))
	yDirection = yDown - yUp
	yVector = Speed * yDirection
	
	ydata = tilemap_get_at_pixel(map_id, x, y + yVector)
	if ydata == 1 {
		y += yVector
	}

	if place_meeting(x, y, oPortal) {
		room_goto(choose(roomset))
	}
	#endregion
	#region take damage
	if place_meeting(x, y, enemies) && invincible <= 0
		{
			Health -= 5
			invincible ++
		}
	if invincible > 0
		{
			invincible ++
			if invincible > 30 * pi
				{
					invincible = 0
				}
		}
	if Health <= 0
		{
			game_restart()
		}
	add = (-cos(50*invincible) / 2) + 0.5
	#endregion
	#region - portal handling
	if rooms = "Prologue" {
		roomset = Intro_Room_Placeholder
	} else if rooms = "Chapter1" {
	
	} else if rooms = "Chapter2" {
	
	} else if rooms = "Chapter3" {
	
	}
	#endregion
	weaponAngle = weapon.image_angle	
	#region the sprite rotation stuff
	if xVector > 0 and yVector == 0 {
		sprite_index = sPlayerWlkRght
	} else if xVector < 0 and yVector == 0 {
		sprite_index = sPlayerWlkLft
	} else if yVector > 0 and xVector == 0 {
		sprite_index = sPlayerWlkFrnt
	} else if yVector < 0 and xVector == 0 {
		sprite_index = sPlayerWlkBck
	}
	if xDirection == 0 and yDirection == 0 {
		image_speed = 0
	} else {
		image_speed = 1
	}
	#endregion
}