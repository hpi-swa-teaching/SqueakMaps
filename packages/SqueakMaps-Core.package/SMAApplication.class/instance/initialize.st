initialize-release
initialize

	super initialize.
	self 
		tiledMapMorph: SMATiledMapMorph new;
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		navigator: SMANavigator new;
		currentView: #search;
		thunderforestMapsApi: SMAThunderforestMapsApi new.

	self tiledMapMorph onDoubleClickAction: [:aPoint | 
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)]
	
	