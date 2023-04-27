if !global.gamePause {
	if onFire {
		Health -= ourFireDamage
		fireTime --
		if fireTime < 0 {
			onFire = false
		}
	}
}
