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
		
	}
	else {
		if self.mode == "attack" { //move towards player
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y) + hitwall //point towards the player
		}
		else if self.mode == "run" { //run away from player at random direction
		image_angle = point_direction(oPlayer.x, oPlayer.y, x, y) + random_range(-20, 20) //point away from the player
		}
		xVector = lengthdir_x(mySpeed, image_angle)
		yVector = lengthdir_y(mySpeed, image_angle)
		if xVector < 0 {
			bbox_side = bbox_left
		}
		else if xVector > 0 {
			bbox_side = bbox_right
		}
		else {
			bbox_side = x
		}
		if yVector < 0 {
			bbox_vert = bbox_top
		}
		else if yVector > 0 {
			bbox_vert = bbox_bottom
		}
		else {
			bbox_vert = y
		}
		
		if tilemap_get_at_pixel(map_id, bbox_side + xVector, bbox_vert + yVector) != 0 and !place_meeting(x + xVector, y + yVector, collidables)
			{
				x += xVector
				y += yVector
				hitwall = 0
			}
		else {
			if irandom(1) == 1 {
				hitwall = 90
			}
			else {
				hitwall = -90
			}
		}
	}
	#endregion
	#region Run & Die
	if Health < runThreshold { //detection for low health, set to run
		self.mode = "run"
	}

	if Health <= 0 {
		instance_destroy(self)
		if irandom_range(1, 20) == 20 {
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

