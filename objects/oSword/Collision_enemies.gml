/// @description Insert description here
// You can write your code in this editor
if !stopped and other.iframe == other.maxframe //Make sure the sword is swinging at the prerequisite speed
	{
		other.Health -= damage
		other.iframe --
	}