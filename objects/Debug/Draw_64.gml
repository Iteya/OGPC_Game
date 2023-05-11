/// @description Insert description here
// You can write your code in this editor

draw_text(10, 10, "Arrows: " + string(oPlayer.arrows))
draw_text(10, 30, "Shards Created: " + string(enemies.impatiance))
draw_text(10, 50, "Buffer: " + string(PauseMenu.menubuffer))
draw_text(10, 70, "Character rotation: " + string(oPlayer.image_angle) + "   " + string(oPlayer.image_index))
draw_text(10, 90, "Pause: " + string(global.gamePause))
draw_text(10, 110, "x: " + string(oPlayer.xdata))
draw_text(10, 130, "y: " + string(oPlayer.ydata))
