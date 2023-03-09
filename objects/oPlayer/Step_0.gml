/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")) {
	game_restart()
}
#region movement
xRight = keyboard_check(ord("D"))
xLeft = keyboard_check(ord("A"))
xDirection = xRight - xLeft
xVector = Speed * xDirection
if place_meeting(x + xVector, y, floors) {
	if !place_meeting(x + xVector, y, collidables) {
		x += xVector
	}
}

yDown = keyboard_check(ord("S"))
yUp = keyboard_check(ord("W"))
yDirection = yDown - yUp
yVector = Speed * yDirection
if place_meeting(x, y + yVector, floors) {
	if !place_meeting(x, y + yVector, collidables) {
		y = y + yVector
	}
}

if place_meeting(x, y, oPortal) {
	room_goto(choose(r1_3))
}
#endregion


