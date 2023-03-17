// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function becomeInvisible(invisTime, invisMaxTime){
	image_alpha = 1 - (invisTime / invisMaxTime) // Make sure this runs every step
}