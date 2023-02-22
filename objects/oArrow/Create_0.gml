/// @description arrow variables :D
x = oBow.x
y = oBow.y //failsafe to set the starting position of the arrow
direction = point_direction(oBow.x, oBow.y, mouse_x, mouse_y)
image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) //direction for facing and movement code
image_xscale = 2
image_yscale = 2 //resize code
myX = x
myY = y //starter coords
