building
clearRoute

	self route: nil.
	self tiledMapMorph route: SMARouteLine new.
	self tiledMapMorph changed.
	self changed: #buildSidebarTopChildren