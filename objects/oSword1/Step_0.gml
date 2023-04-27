x = oPlayer.x
y = oPlayer.y

angle = image_angle
goto = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)

rotation_change = min(rotation_max, goto - angle)
image_angle += rotation_change + 45
if image_angle < 0 {
	image_angle = 360 - image_angle
}
