/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_escape) {
	global.gamePause = true
	instance_create_layer(x, y, "Foreground", oPauseScreen)
}




