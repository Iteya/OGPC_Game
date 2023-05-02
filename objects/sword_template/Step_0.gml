x = oPlayer.x
y = oPlayer.y
#region Rotational Damping
angle = image_angle
goto = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) + 45
rotation_change = goto - angle
if rotation_change > 180
	{
		rotation_change -= 360
	}
else if rotation_change < -180
	{
		rotation_change += 360
	}
rotation_change = clamp(rotation_change, -rotation_max, rotation_max)
image_angle += rotation_change
if image_angle > 180
	{
		image_angle -= 360
	}
else if image_angle < -180
	{
		image_angle += 360
	}
#endregion

#region Particles
createX = x + lengthdir_x(swordLength, image_angle - 45)
createY = y + lengthdir_y(swordLength, image_angle - 45)
if abs(image_angle - previousAngle) == rotation_max
	{
		part_emitter_region(pSystem, swordTrailEmitter, prevCreateX, createX, prevCreateY, createY, ps_shape_line, ps_distr_linear)
		part_type_direction(swordTrail, image_angle, image_angle, 0, 0) // Make the particles face the same direction as the sword
		if stopped
			{
				part_emitter_stream(pSystem, swordTrailEmitter, swordTrail, 10) // 'Draw' a line, making a trail effect
				stopped = false
			}
	}
else
	{
		part_emitter_clear(pSystem, swordTrailEmitter)
		stopped = true
	}

previousAngle = image_angle
prevCreateX = createX // Remember the previous location to 'draw' a line to the new one
prevCreateY = createY

#endregion
