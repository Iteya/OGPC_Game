/// @description Insert description here
// You can write your code in this editor
if !global.gamePause {
	explosionTimer -= irandom_range(0.5, 1)	
	if explosionTimer <= 0 {
		instance_create_layer(x, y, layer, oBossBoom)
		instance_destroy(self)
	}
}