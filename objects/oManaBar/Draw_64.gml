if !global.gamePause {
	draw_healthbar(oPlayer.x - 33, (oPlayer.y - 30), oPlayer.x + 33, oPlayer.y - 50, oPlayer.mana * 2, c_black, c_blue, c_blue, 0, true, true)
}