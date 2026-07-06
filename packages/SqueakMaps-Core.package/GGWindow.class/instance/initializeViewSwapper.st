initialization
initializeViewSwapper

	self layoutPolicy: ProportionalLayout new.
	self viewSwapper: GGViewSwapper new.
	self viewSwapper setWindow: self picture: self pictureMorph map: self tiledMapMorph