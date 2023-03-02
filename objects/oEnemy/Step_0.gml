/// @description Test Enemy
#region //Basic movement AI
if idle { //base state, just stands still and waits for player to get close
	if distance_to_object(oPlayer) < 200 {
		idle = false
		run = false
		attack = true
	}
} else if attack { //move towards player
	mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
} else if run { //run away from player at random direction
	mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
	playerdirection = point_direction(x, y, oPlayer.x, oPlayer.y)
	direction = (playerdirection + (180 + random(40)))
}

if hp < 10 { //detection for low health, set to run
	attack = false
	idle = false
	run = true
}
if keyboard_check_pressed(vk_space) { //testing for low health
	hp = 5
}
if hp <= 0 {
	instance_destroy(self)
}
#endregion