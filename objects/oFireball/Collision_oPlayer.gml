/// @description Hit Self

if other.invincible == 0 and sprite_index == sBoom2
	{
		other.Health -= 3
		other.invincible ++
		setOnFire(0.1, 120, other)
	}