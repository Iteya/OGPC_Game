/// @description fireball variables >:D
x = oStaff.x
y = oStaff.y //failsafe to set the starting position of the arrow
direction = point_direction(oStaff.x, oStaff.y, mouse_x, mouse_y)
image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) //direction for facing and movement code
image_xscale = 4
image_yscale = 4 //resize code
myX = x
myY = y //starter coords
timer = 10
