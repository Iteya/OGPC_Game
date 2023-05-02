image_xscale = 4 //how big the Object is in the x dimension
image_yscale = 4 //how big the Object is in the y dimension
damage = 12
image_angle = oPlayer.weaponAngle
previousAngle = image_angle
rotation_max = 5
swordLength = 125
prevCreateX = x
prevCreateY = y
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