/// @description Insert description here
// You can write your code in this editor
if global.gamePause {
	draw_sprite(sPauseMenu, 1, 0, 0)
	if keyboard_check_pressed(vk_escape) && buffer == 0 {
		global.gamePause = false
	}
	
	#region menu navigation
	if !options {
		if button == "return" {
			draw_sprite(sUnpauseButton, 1, 555, 200) // back to game - selected
			draw_sprite(sOptionsButton, 2, 555, 350) // options
			draw_sprite(sQuitButton, 2, 555, 500) // quit game
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				button = "options"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				button = "quit"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) {
				global.gamePause = false
			}
		}
		if button == "options" {
			draw_sprite(sUnpauseButton, 2, 555, 200) // back to game
			draw_sprite(sOptionsButton, 1, 555, 350) // options - selected
			draw_sprite(sQuitButton, 2, 555, 500) // quit game
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				button = "quit"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				button = "return"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0{
				options = true
				menubuffer = 2
			}
		}
		if button = "quit" {
			draw_sprite(sUnpauseButton, 2, 555, 200) // back to game
			draw_sprite(sOptionsButton, 2, 555, 350) // options
			draw_sprite(sQuitButton, 1, 555, 500) // quit game - selected
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				button = "return"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				button = "options"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) {
				game_end()
			}
		}
	} if options {
		if selection = "back" {
			draw_sprite(sBackButton, 1, 470, 200) // all this doesn't work and I don't know why! HELP!!!!
			draw_sprite(sFullscreenButton, 2, 470, 300)
			draw_sprite(sWindowedButton, 2, 470, 400)
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				selection = "fullscreen"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				selection = "windowed"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0{
				options = false
			}
		}
		if selection = "fullscreen" {
			draw_sprite(sBackButton, 2, 470, 200)
			draw_sprite(sFullscreenButton, 1, 470, 300)
			draw_sprite(sWindowedButton, 2, 470, 400)
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				selection = "windowed"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				selection = "back"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				window_set_fullscreen(true)
			}
		}
		if selection = "windowed" {
			draw_sprite(sBackButton, 2, 470, 200)
			draw_sprite(sFullscreenButton, 2, 470, 300)
			draw_sprite(sWindowedButton, 1, 470, 400)
			if keyboard_check_pressed(vk_down) && menubuffer == 0 {
				selection = "back"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_up) && menubuffer == 0 {
				selection = "fullscreen"
				menubuffer = 2
			}
			if keyboard_check_pressed(vk_enter) && menubuffer == 0 {
				window_set_fullscreen(false)
			}
		}
	}
	#endregion
}