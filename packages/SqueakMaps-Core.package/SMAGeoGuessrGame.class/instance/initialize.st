initialize-release
initialize

	super initialize.
	self
		currentScreen: #start;
		roundActive: false;
		mapMorph: self buildCampusMap
