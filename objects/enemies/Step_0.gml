if global.gamePause == false {
	event_inherited()
	#region //Basic movement AI
	if self.mode == "idle" {//base state, just stands still and waits for player to get close
		if distance_to_object(oPlayer) < sightRange {
			self.mode = "attack"
		}
		impatiance += irandom_range(1, 5)
		if impatiance >= maximpatiance {
			stepx = random_range(-30, 30)
			image_angle += stepx
			impatiance = 0
		}
		if place_meeting(x, y, projectiles) and self.mode != "run" {
			self.mode = "attack"
		}
		
	}
	else {
		if self.mode == "attack" { //move towards player
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y) + hitwall //point towards the player
		}
		else if self.mode == "run" { //run away from player at random direction
		image_angle = point_direction(oPlayer.x, oPlayer.y, x, y) //point away from the player
		}
		xVector = lengthdir_x(mySpeed, image_angle)
		yVector = lengthdir_y(mySpeed, image_angle)
		if tilemap_get_at_pixel(map_id, x + xVector, y) == 1 and !place_meeting(x + xVector, y, collidables) {
			x += xVector
		}
		if tilemap_get_at_pixel(map_id, x, y + yVector) == 1 and !place_meeting(x, y + yVector, collidables) {
			y += yVector
		}
	}
	#endregion
	#region Run & Die
	if Health < runThreshold { //detection for low health, set to run
		self.mode = "run"
	}

	if Health <= 0 {
		instance_destroy(self)
		if irandom_range(1, 10) == 10 {
			instance_create_layer(x, y, layer, choose(oSword1_create, oSword2_create, oSword3_create, oSword4_create, oSword5_create, oSword6_create, oSword7_create, oSword8_create, oBow_create, oLightningStaff_create, oNecromancyStaff_create, oStarRod_create))
		}
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

