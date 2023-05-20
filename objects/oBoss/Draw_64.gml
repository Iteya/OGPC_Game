/// @description Insert description here
// You can write your code in this editor
if !global.gamePause {
	if bossFight {
		draw_healthbar(10, 10, 1356, 40, BossHealth/4, c_gray, c_red, c_red, 1, true, true)
		draw_sprite(Sprite99, 0, view_wport[1]/2, 100)
	}
}