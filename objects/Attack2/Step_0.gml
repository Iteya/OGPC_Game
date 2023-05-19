/// @description Insert description here
// You can write your code in this editor
timer -= irandom_range(0.5, 1)
if timer <= 0 {
	sprite_index = sAttack2_2
	timer2 += irandom_range(1, 1.5)
	if timer2 >= 15 {
		instance_destroy(self)
	}
	if place_meeting(x, y, oPlayer) && oPlayer.invincible <= 0 {
		oPlayer.Health -= damage
		oPlayer.invincible ++
	}
}
