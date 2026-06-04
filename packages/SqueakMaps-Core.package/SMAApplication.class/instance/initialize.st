initialize-release
initialize

	super initialize.
	self 
		tiledMapMorph: (SMADecoratedMapMorph fromOSMFile:
			(SMADecoratedMapMorph readStreamForOSMAssetNamed: 'assets/osm/hpi-k.osm'));
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		navigator: SMANavigator new;
		currentView: #search;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new.

	self tiledMapMorph onDoubleClickAction: [:aPoint | 
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)]
	
	