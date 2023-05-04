oLightningStaff.boltsMade ++
timer = 15
image_xscale = irandom_range(1,3) * 2
fork = false
if irandom(4) == 0
	{
		fork = true
	}
len = 32 * image_xscale
image_angle = oLightningStaff.boltAngle
oLightningStaff.boltAngle += random_range(-35, 35)

