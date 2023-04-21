/// @description Draw oPlayer.Healthbar

draw_healthbar(x - (oPlayer.Healthbar / 2), (y - (oPlayer.Healthbar / 2)) - 15, x + (oPlayer.Healthbar / 2), y - oPlayer.Healthbar, oPlayer.Health * 100 / oPlayer.maxHealth, c_black, c_red, c_blue, 0, true, true)
