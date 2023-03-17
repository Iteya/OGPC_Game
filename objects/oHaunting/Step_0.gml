/// @description
#region Basic movement AI
if self.mode == "idle" { //base state, just stands still and waits for player to get close
	if distance_to_object(oPlayer) < 600 {
		self.mode = "attack"
	}
} else if self.mode == "attack" { //move towards player
	mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
} else if self.mode == "run" { //run away from player at random direction
	mp_potential_step(oPlayer.x, oPlayer.y, mySpeed, false)
	playerdirection = point_direction(x, y, oPlayer.x, oPlayer.y)
}

if hp < 5 { //detection for low health, set to run
	self.mode = "run"
}

if hp <= 0 {
	instance_destroy(self)
}
#endregion

#region Iframes
if (iframe < maxframe)
	{
		iframe --
		becomeInvisible(iframe, maxframe)
		if (iframe < 0)
			{
				iframe = maxframe
			}
	}

#endregion

#region Invisibility

if self.mode == "attack"
	{
		
	}


#endregion

