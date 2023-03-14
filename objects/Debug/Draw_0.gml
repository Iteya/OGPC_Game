/// @description Insert description here
// You can write your code in this editor

draw_text(10, 10, "Arrows: " + string(oPlayer.arrows))

draw_text(10, 100, "Angle: " + string(oPlayer.weapon.image_angle))



draw_healthbar(10, 40, 210, 80, oPlayer.Health*2, c_black, c_red, c_blue, 0, true, true)


