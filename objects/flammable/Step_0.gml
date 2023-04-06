/// @description Insert description here
// You can write your code in this editor
if !global.gamePause {
	if onFire {
		Health -= ourFireDamage
		fireTime --
		if fireTime < 0 {
			onFire = false
		}
	}
}
