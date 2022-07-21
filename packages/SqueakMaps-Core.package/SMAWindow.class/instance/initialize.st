initialization
initialize

	super initialize.
	self tiledMapMorph: SMATiledMapMorph new.
	self mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph).
	self searchManager: SMASearchManager new.
	self currentView: #search.
	self bingApi: SMABingMapsApi new.
	self thunderforestMapsApi: SMAThunderforestMapsApi new.

	self tiledMapMorph onDoubleClickAction: [:aPoint | 
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)].
	
	