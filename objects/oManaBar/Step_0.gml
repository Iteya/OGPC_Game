image_xscale = oPlayer.mana / 50
timer ++
if timer >= 30 {
		timer = 0
		if oPlayer.mana < 50 {
			oPlayer.mana ++
		}
	}
