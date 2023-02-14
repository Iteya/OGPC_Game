/// @description Test Enemy
#region //Basic movement AI
if !place_meeting(x + mySpeed, y, oWall) {
	move_towards_point(oPlayer.x, oPlayer.y, mySpeed)
} else if !place_meeting(x - mySpeed, y, oWall) {
	move_towards_point(oPlayer.x, oPlayer.y, mySpeed)
}
#endregion