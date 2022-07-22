initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new;
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		searchManager: SMASearchManager new;
		currentView: #search;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new.

	self tiledMapMorph onDoubleClickAction: [:aPoint | 
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)]
	
	