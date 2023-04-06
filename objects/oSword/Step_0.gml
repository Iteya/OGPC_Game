/// @description Insert description here
// You can write your code in this editor
if !global.gamePause {
	mouseDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)
	targetDirection = [dcos(mouseDirection), dsin(mouseDirection)]
	currentDirection = [dcos(image_angle), dsin(image_angle)]
	deltaDirection[0] = (targetDirection[0] - currentDirection[0]) / 10
	deltaDirection[1] = (targetDirection[1] - currentDirection[1]) / 10
	finalDirection[0] = currentDirection[0] + deltaDirection[0]
	finalDirection[1] = currentDirection[1] + deltaDirection[1]
	image_angle = darctan2(finalDirection[1], finalDirection[0])


	x = oPlayer.x //set the x
	y = oPlayer.y //set the y
	createX = x + lengthdir_x(150, image_angle)
	createY = y + lengthdir_y(150, image_angle)
	if mouse_check_button(mb_left) and abs(image_angle - previousAngle) > minSwordSwing {
			instance_create_layer(createX, createY, layer, oSwordTrail)
	}

	previousAngle = image_angle
}
