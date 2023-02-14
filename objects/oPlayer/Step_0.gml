/// @description Insert description here
// You can write your code in this editor


#region movement
xRight = keyboard_check(vk_right)
xLeft = keyboard_check(vk_left)
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

yDown = keyboard_check(vk_down)
yUp = keyboard_check(vk_up)
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






