if !global.gamePause {
	fadetimer --
	if fadetimer <= 0 {
		instance_destroy(self)
	}
}
