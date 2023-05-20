/// @description Hurt
if other.iframe == other.maxframe and moving {
other.Health -= 15
other.iframe --
instance_destroy(self)
}
