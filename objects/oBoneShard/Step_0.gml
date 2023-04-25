if !global.gamePause {
	timer --
	if timer == 49 and global.shardsCreated < oNecromancyStaff.shardMax
		{
			Direction = point_direction(x, y, mouse_x, mouse_y) + irandom_range(-turn, turn)
			destX = dcos(Direction) * spread + x
			destY = dsin(Direction) * spread * -1 + y
			instance_create_layer(destX, destY, "Midground", oBoneShard)
		}
	else if timer == 49
		{
			global.shardsCreated = 0
		}
	if timer <= 0
		{
			instance_destroy(self)
		}
	
}