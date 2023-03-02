/// @description Insert description here
// You can write your code in this editor

xA = x //first set of coordinates
yA = y
if distance_to_point(myX,myY) < 800 {
	move_contact_solid(direction, 10) //movement code
} else {
	image_speed = 0 //if the distance is too far, then stop moving and stop the animation
}
xB = x
yB = y //second set of coordinates
if xA == xB and yA == yB {
	image_speed = 0 //if not moving anymore, stop animation
	if place_meeting(x, y, oPlayer) {
		instance_destroy(self)
		oPlayer.arrows ++
	}
}
else if  place_meeting(x, y, oEnemy) {
	instance_destroy(self)
	oEnemy.hp -= 7
}