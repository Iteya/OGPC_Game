/// @description Test Enemy
#region //Basic movement AI
if mode == "idle" { //base state, just stands still and waits for player to get close
	if distance_to_object(oPlayer) < 200 {
		mode = "attack"
	}
} else if mode == "attack" { //move towards player
	mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
	image_angle = point_direction(oPlayer.x, oPlayer.y, x, y) //point towards the player
} else if mode == "run" { //run away from player at random direction
	mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
	playerdirection = point_direction(x, y, oPlayer.x, oPlayer.y)
	direction = (playerdirection + (180 + random(40)))
	image_angle = playerdirection //point away from the player
}

if hp < 25 { //detection for low health, set to run
	mode = "run"
}

if hp <= 0 {
	instance_destroy(self)
}
#endregion