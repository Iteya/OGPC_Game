/// @description Insert description here
// You can write your code in this editor
if !global.gamePause {
	if bossFight {
		attackTimer1 -= irandom_range(0.5, 2)
		if attackTimer1 <= 0 {
			instance_create_layer(irandom_range(2495, 4620), irandom_range(370, 2180), "Midground", Attack1)
			if Phase == 1 {
				attackTimer1 = 150
			} else if Phase == 2 {
				attackTimer1 = 100
			} else if Phase == 3 {
				attackTimer1 = 50
			}
		}
		attackTimer2 -= irandom_range(1, 1.5)
		if attackTimer2 <= 0 {
			instance_create_layer(x, y, "Midground", Attack2)
			if Phase == 1 {
				attackTimer2 = 250
			} else if Phase == 2 {
				attackTimer2 = 200
			} else if Phase == 3 {
				attackTimer2 = 150
			}
		}
		attackTimer3 -= irandom_range(0.5, 1.5)
		if attackTimer3 <= 0 {
			instance_create_layer(x + 5, y + 5, layer, choose(oEnemy, oMoth))
			if Phase == 1 {
				attackTimer3 = 300
			} else if Phase == 2 {
				attackTimer3 = 250
			} else if Phase == 3 {
				attackTimer3 = 200
			}
		}
		if place_meeting(x, y, oPlayer.weapon) && invincibility <= 0 {
			BossHealth -= oPlayer.weapon.damage
			oBossOrbs.image_speed = 0
			image_speed = 0
			invincibility = 10
		}
		if invincibility > 0 {
			invincibility -= 0.5
		}
		if invincibility <= 0 {
			oBossOrbs.image_speed = 1
			image_speed = 1
			invincibility = -1
		}
		if BossHealth <= (400/2) {
			Phase = 2
		} else if BossHealth <= (400/3) {
			Phase = 3
		}
		if BossHealth <= 0 {
			instance_create_layer(x, y, layer, oBossBoom)
			instance_destroy(self)
			instance_destroy(oBossOrbs)
			instance_create_layer(x, y, layer, Boss_Ruin)
			BossPortal.visible = true
		}
	}	
}