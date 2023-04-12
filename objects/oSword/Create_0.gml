/// @description Insert description here
// You can write your code in this editor
image_xscale = 4 //how big the Object is in the x dimension
image_yscale = 4 //how big the Object is in the y dimension
previousAngle = image_angle
minSwordSwing = 2 //the slowest you can swing the sword and still create a trail
prevCreateX = x + lengthdir_x(150, image_angle)
prevCreateY = y + lengthdir_y(150, image_angle)

image_angle = oPlayer.weaponAngle

#region PARTICLES

pSystem = part_system_create_layer("Midground", false)
swordTrail = part_type_create()

// This defines the particle's shape
part_type_shape(swordTrail,pt_shape_cloud) // Sets the shape
part_type_size(swordTrail,0.2,0.2,0,0) // Sets the size
part_type_color1(swordTrail,c_ltgray) // Sets the color
part_type_life(swordTrail, 7, 7) // Sets how long it lasts

swordTrailEmitter = part_emitter_create(pSystem)
part_emitter_region(pSystem, swordTrailEmitter, mouse_x, mouse_x, mouse_y, mouse_y, ps_shape_line, ps_distr_gaussian)
stopped = false

#endregion