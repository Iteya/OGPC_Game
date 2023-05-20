/// @description Insert description here
// You can write your code in this editor
if other.invincibility == -1 {
	other.invincibility = 30
	other.BossHealth -= damage
	instance_destroy(self)
}