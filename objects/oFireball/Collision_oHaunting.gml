/// @description Do damage

if !(other.iframe < other.maxframe)
	{
		other.hp -= 10
		other.iframe --
	}