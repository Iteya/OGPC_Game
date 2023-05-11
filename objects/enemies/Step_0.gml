/// @description Insert description here
// You can write your code in this editor
if global.gamePause == false {
	event_inherited()
	#region //Basic movement AI
	if self.mode == "idle" { //base state, just stands still and waits for player to get close
		if distance_to_object(oPlayer) < sightRange {
			self.mode = "attack"
		}
		impatiance += irandom_range(1, 5)
		if impatiance >= 500 {
			stepx = random_range(-30, 30)
			stepy = random_range(-30, 30)
			image_angle = point_direction(x + stepx, y + stepy, x, y)
			impatiance += irandom_range(5, 10)
				impatiance = 0
		}
		mp_potential_step(x + stepx, y + stepy, mySpeed, true)
		if impatiance >= 100 {
			stepx = 0
			stepy = 0
		}
		
	} else if self.mode == "attack" { //move towards player
		mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
		image_angle = point_direction(oPlayer.x, oPlayer.y, x, y) //point towards the player
	} else if self.mode == "run" { //run away from player at random direction
		mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
		playerdirection = point_direction(x, y, oPlayer.x, oPlayer.y)
		direction = (playerdirection + (180 + random(40)))
		image_angle = playerdirection //point away from the player
	}

	if Health < runThreshold { //detection for low health, set to run
		self.mode = "run"
	}

	if Health <= 0 {
		instance_destroy(self)
	}
	#endregion

	add = (-cos(50*iframe) / 2) + 0.5 //Flashing anim




	#region Iframes
	if (iframe < maxframe) {
		iframe --
		if (iframe < 0) {
			iframe = maxframe
		}
	}

	#endregion
}
