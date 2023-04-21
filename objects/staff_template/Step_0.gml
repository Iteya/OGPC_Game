/// @description staff weapon template
if !global.gamePause {
	event_inherited()
	
	if cooling > 0
		{
			cooling --
		}
	if shoot = true and cooling == 0 {
		instance_create_layer(x, y, layer, projectile)
		shoot = false
		cooling = cooldown * 30
	}
}
