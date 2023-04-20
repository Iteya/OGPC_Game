/// @description staff weapon template
if !global.gamePause {
	image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) //change where it rotates **MAKE SURE TO PUT THE ORIGIN OF THE STAFF TO WHERE IT WILL ROTATE!!**
	x = oPlayer.x //set the x
	y = oPlayer.y //set the y


	if shoot = true {
		instance_create_layer(x, y, layer, projectile)
		shoot = false
	}
}
