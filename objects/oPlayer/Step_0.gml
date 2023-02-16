/// @description Insert description here
// You can write your code in this editor


#region movement
xRight = keyboard_check(ord("D"))
xLeft = keyboard_check(ord("A"))
xDirection = xRight - xLeft
xVector = Speed * xDirection
if (place_meeting(x + xVector, y, oWall))
	{
		while (!place_meeting(x + xDirection, y, oWall))
			{
				x += xDirection
			}
		xVector = 0
	}
x += xVector

yDown = keyboard_check(ord("S"))
yUp = keyboard_check(ord("W"))
yDirection = yDown - yUp
yVector = Speed * yDirection
if (place_meeting(x, y + yVector, oWall))
	{
		while (!place_meeting(x, y + yDirection, oWall))
			{
				y += yDirection
			}
		yVector = 0
	}
y += yVector




#endregion


/* currently broken
#region attack timer

if (isAttacking) //check if the player is in the process of attacking
	{
		if (attackTimer > 0) //check if the timer is done yet
			{
				attackTimer --
			}
		else //stop attacking
			{
				isAttacking = false
				attackTimer = attackTimerDefault
				oBow.sprite_index = sBow
			}
	}
if (weapon == "bow" && attackTimer == 24) //check if the bow should shoot an arrow
	{
		instance_create_layer(x, y, oArrow)
	}




#endregion
*/

