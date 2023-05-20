oLightningStaff.boltsMade ++
timer = 15
image_xscale = random_range(1,7)
fork = 1
if round(image_xscale) == 7
	{
		fork = 3
	}
len = 32 * image_xscale
image_angle = oLightningStaff.boltAngle
oLightningStaff.boltAngle += random_range(-20 * fork, 20 * fork)
damage = 6
