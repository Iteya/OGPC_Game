/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) //change where it rotates **MAKE SURE TO PUT THE ORIGIN OF THE OBJECT TO WHERE IT WILL ROTATE!!**
x = oPlayer.x //set the x
y = oPlayer.y //set the y
createX = x + lengthdir_x(150, image_angle)
createY = y + lengthdir_y(150, image_angle)
if mouse_check_button(mb_left) {
		instance_create_layer(createX, createY, layer, oSwordTrail)
}