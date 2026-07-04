building
clearRoute

	self route: nil.
	self tiledMapMorph route: SMARouteLine new.
	self switchToEmptySearchView