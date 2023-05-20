x = oPlayer.weapon.x
y = oPlayer.weapon.y //failsafe to set the starting position of the arrow
direction = point_direction(oPlayer.weapon.x, oPlayer.weapon.y, mouse_x, mouse_y)
image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) //direction for facing and movement code
image_xscale = 4
image_yscale = 4 //resize code
damage = 10
