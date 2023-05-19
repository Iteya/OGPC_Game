event_inherited()
maxHealth = 50
Health = maxHealth
maxframe = 50
mySpeed = 1
iframe = maxframe
mode = "idle"
onFire = false
imageSideLength = 64
healthVisible = true
stepx = 0
stepy = 0
impatiance = 0
maximpatiance = 100

map_id = layer_tilemap_get_id(layer_get_id("Walls")) //The ID used for tilemap collision functions
hitwall = 0 //Makes it turn another way when it hits a wall