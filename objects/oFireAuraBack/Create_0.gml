/// @description Insert description here
// You can write your code in this editor

timer = global.fireTime
target = global.fireTarget
firedmg = global.fireDamage
global.fireID = instance_id_get(self)

instance_create_layer(target.x, target.y, "Foreground", oFireAuraFront)



