initialize-release
initialize

	super initialize.
	self 
		tiledMapMorph: (SMADecoratedMapMorph fromOSMFile: ( (GitAssetLoader for: 'SqueakMaps') loadString: 'assets/osm/raum_K-E.18.osm') contents readStream);
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		navigator: SMANavigator new;
		currentView: #search;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new.

	self tiledMapMorph onDoubleClickAction: [:aPoint | 
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)]
	
	