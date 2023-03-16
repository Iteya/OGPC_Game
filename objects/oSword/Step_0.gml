/// @description Insert description here
// You can write your code in this editor
mouseDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)
targetDirection = [dcos(mouseDirection), dsin(mouseDirection)]
currentDirection = [dcos(image_angle), dsin(image_angle)]
deltaDirection[0] = (targetDirection[0] - currentDirection[0]) / 20
deltaDirection[1] = (targetDirection[1] - currentDirection[1]) / 20
finalDirection[0] = currentDirection[0] + deltaDirection[0]
finalDirection[1] = currentDirection[1] + deltaDirection[1]
image_angle = darctan2(finalDirection[1], finalDirection[0])


//quadrant = [sign(dcos(image_angle)), sign(dsin(image_angle))]
//mouseQuadrant = [sign(mouse_x - x), sign(mouse_y - y)]


image_angle = image_angle mod 360
//previousAngle = image_angle


x = oPlayer.x //set the x
y = oPlayer.y //set the y
createX = x + lengthdir_x(150, image_angle)
createY = y + lengthdir_y(150, image_angle)
if mouse_check_button(mb_left)
	{
		instance_create_layer(createX, createY, layer, oSwordTrail)
	}