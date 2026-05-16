initialize-release
initialize

	super initialize.
	self 
		tiledMapMorph: SMATiledMapMorph new;
	     	mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		navigator: SMANavigator new;
		currentView: #search;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new.
Transcript show: 'a'; cr.
	self tiledMapMorph onDoubleClickAction: [:aPoint | 
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)].
	
	