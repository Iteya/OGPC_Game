/// @description
if !global.gamePause {
	event_inherited()
	image_angle = 0

	#region Invisibility

	if self.mode == "attack" {
		becomeInvisible(clamp(hauntTimer, 0, 50), 50) //The clamp function allows it to both have remain invisible for longer
		if hauntTimer >= 100 { //Phase in and out of visibility
			descending = true
		} else if hauntTimer <= 0 {
			descending = false
		}
		if descending {
			hauntTimer --
		} else {hauntTimer ++}
	}
	
	if image_alpha > 0.7
		{
			healthVisible = true
		}
	else
		{
			healthVisible = false
		}
	
	#endregion
	if iframe < maxframe and iframe > 0 {
		becomeInvisible(iframe, maxframe) //Become slightly visible when damaged
	}
}
