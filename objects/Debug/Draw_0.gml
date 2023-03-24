/// @description Insert description here
// You can write your code in this editor

draw_text(10, 10, "Arrows: " + string(oPlayer.arrows))

//draw_text(10, 100, "Angle: " + string(oPlayer.weapon.image_angle))


draw_healthbar(oPlayer.x - 32, oPlayer.y - 64, oPlayer.x + 31, oPlayer.y - 48, oPlayer.Health * 100 / oPlayer.maxHealth, c_black, c_red, c_blue, 0, true, true)


