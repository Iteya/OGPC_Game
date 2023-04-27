shader_set(flashing)
shader_set_uniform_f(uni_add, add)
if onFire
	{
		draw_sprite(sFireRingBack, floor((fireTime / 5) mod 16), x, y)
		draw_self()
		draw_sprite(sFireRingFront, floor((fireTime / 5) mod 16), x, y)
	}
else {draw_self()}
shader_reset()




