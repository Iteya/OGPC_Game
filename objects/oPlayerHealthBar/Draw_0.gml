/// @description Draw oPlayer.Healthbar

draw_healthbar(x - (oPlayer.Health / 2), (y - (oPlayer.Health / 2)) - 15, x + (oPlayer.Health / 2), y - oPlayer.Health, oPlayer.Health * 100 / oPlayer.maxHealth, c_black, c_red, c_blue, 0, true, true)
