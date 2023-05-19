/// @description Insert description here
// You can write your code in this editor
if !global.gamePause {
	if bossFight {
		attackTimer1 -= irandom_range(0.5, 2)
		if attackTimer1 <= 0 {
			instance_create_layer(irandom_range(2495, 4620), irandom_range(370, 2180), "Midground", Attack1)
			attackTimer1 = 150
		}
		attackTimer2 -= irandom_range(1, 1.5)
		if attackTimer2 <= 0 {
			instance_create_layer(x, y, "Midground", Attack2)
			attackTimer2 = 250
		}
	}	
}