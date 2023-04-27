/// @description staff weapon template
if !global.gamePause {
	event_inherited()
	
	if cooling > 0
		{
			cooling --
		}
	if shoot = true and cooling == 0 and oPlayer.mana >= manaCost {
		oPlayer.mana -= manaCost
		shoot = false
		cooling = cooldown * 30
		instance_create_layer(x, y, layer, projectile)
	}
}
