/// @description Insert description here
// You can write your code in this editor
if global.gamePause {
	draw_sprite(sPauseMenu, 1, 0, 0)
	if !options {
		if button = "unpause" {
			draw_sprite(sUnpauseButton, 2, 555, 200)
			draw_sprite(sOptionsButton, 1, 555, 300)
			draw_sprite(sQuitButton, 1, 555, 400)
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				button = "quit"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				button = "options"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				global.gamePause = false
				menubuffer = 2
			}
		}
		if button = "options" {
			draw_sprite(sUnpauseButton, 1, 555, 200)
			draw_sprite(sOptionsButton, 2, 555, 300)
			draw_sprite(sQuitButton, 1, 555, 400)
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				button = "unpause"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_down) && menubuffer == 0{
				button = "quit"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				options = true
				menubuffer = 2
			}
		}
		if button = "quit" {
			draw_sprite(sUnpauseButton, 1, 555, 200)
			draw_sprite(sOptionsButton, 1, 555, 300)
			draw_sprite(sQuitButton, 2, 555, 400)
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				button = "options"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				button = "unpause"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				game_end()
				menubuffer = 2
			}
		}
	}
	else if options {
		if selection = "back" {
			draw_sprite(sBackButton, 2, 555, 200)
			draw_sprite(sFullscreenButton, 1, 555, 300)
			draw_sprite(sWindowedButton, 1, 555, 400)
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				selection = "windowed"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				selection = "fullscreen"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				options = false
			}
		}
		if selection = "fullscreen" {
			draw_sprite(sBackButton, 1, 555, 200)
			draw_sprite(sFullscreenButton, 2, 555, 300)
			draw_sprite(sWindowedButton, 1, 555, 400)
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				selection = "back"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				selection = "windowed"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				window_set_fullscreen(true)
			}
		}
		if selection = "windowed" {
			draw_sprite(sBackButton, 1, 555, 200)
			draw_sprite(sFullscreenButton, 1, 555, 300)
			draw_sprite(sWindowedButton, 2, 555, 400)
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				selection = "fullscreen"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				selection = "back"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				window_set_fullscreen(false)
			}
		}
	}
}
