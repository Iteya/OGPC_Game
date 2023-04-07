/// @description Insert description here
// You can write your code in this editor
if global.gamePause {
	draw_sprite(sPauseMenu, 1, 0, 0)
	if !options {
		if button = "unpause" {
			draw_sprite(sUnpause, 1, 555, 200)
			draw_sprite(sOptions, 2, 555, 300)
			draw_sprite(sQuit, 2, 555, 400)
			if keyboard_check_pressed(ord("W")) {
				button = "quit"
			}
			if keyboard_check_pressed(ord("S")) {
				button = "options"
			}
			if keyboard_check_pressed(vk_enter) {
				global.gamePause = false
			}
		}
		if button = "options" {
			draw_sprite(sUnpause, 2, 555, 200)
			draw_sprite(sOptions, 1, 555, 300)
			draw_sprite(sQuit, 2, 555, 400)
			if keyboard_check_pressed(ord("W")) {
				button = "unpause"
			}
			if keyboard_check_pressed(ord("S")) {
				button = "quit"
			}
			if keyboard_check_pressed(vk_enter) {
				options = true
			}
		}
		if button = "quit" {
			draw_sprite(sUnpause, 2, 555, 200)
			draw_sprite(sOptions, 2, 555, 300)
			draw_sprite(sQuit, 1, 555, 400)
			if keyboard_check_pressed(ord("W")) {
				button = "options"
			}
			if keyboard_check_pressed(ord("S")) {
				button = "unpause"
			}
			if keyboard_check_pressed(vk_enter) {
				game_end()
			}
		}
	}
	else if options {
		if selection = "back" {
		//ran out of time again
		}
		if button = "fullscreen" {
		//ran out of time
		}
		if button = "Windowed" {
		//ran out of
		}
	}
}




