/// @description Draw oPlayer.Healthbar

draw_healthbar(x - (oPlayer.Healthbar / 2), (y - (oPlayer.Healthbar / 2) - 10) - 15, x + (oPlayer.Healthbar / 2), y - oPlayer.Healthbar - 10, oPlayer.Health * 100 / oPlayer.maxHealth, c_black, c_red, c_red, 0, true, true)
