/// @description Do damage

if !(other.iframe < other.maxframe)
	{
		other.Health -= 3
		other.iframe --
		setOnFire(0.5, 2, other)
	}