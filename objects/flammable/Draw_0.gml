/// @description Insert description here
// You can write your code in this editor

if onFire
	{
		draw_sprite(sFireRingBack, floor((fireTime / 5) mod 16), x, y)
		draw_self()
		draw_sprite(sFireRingFront, floor((fireTime / 5) mod 16), x, y)
	}
else {draw_self()}







