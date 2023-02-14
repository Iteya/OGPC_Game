/// @description Test Enemy
#region
if oPlayer.x >= x {
	if !place_meeting(x + mySpeed, y, oWall) {
		x = x + mySpeed
	}
} if oPlayer.x <= x {
	if !place_meeting(x - mySpeed, y, oWall) {
		x = x - mySpeed
	}
} if oPlayer.y >= y {
	if !place_meeting(x, y + mySpeed, oWall) {
		y = y + mySpeed
	}
} if oPlayer.y <= y {
	if !place_meeting(x, y - mySpeed, oWall) {
		y = y - mySpeed
	}
}
#endregion