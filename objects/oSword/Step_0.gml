/// @description Insert description here
// You can write your code in this editor
mouseDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)
targetDirection = [dcos(mouseDirection), dsin(mouseDirection)]
currentDirection = [dcos(image_angle), dsin(image_angle)]
deltaDirection[0] = (targetDirection[0] - currentDirection[0]) / attackSlow
deltaDirection[1] = (targetDirection[1] - currentDirection[1]) / attackSlow
finalDirection[0] = currentDirection[0] + deltaDirection[0]
finalDirection[1] = currentDirection[1] + deltaDirection[1]
image_angle = darctan2(finalDirection[1], finalDirection[0])



x = oPlayer.x //set the x
y = oPlayer.y //set the y
createX = x + lengthdir_x(150, image_angle)
createY = y + lengthdir_y(150, image_angle)
if abs(image_angle - previousAngle) > minSwordSwing
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
