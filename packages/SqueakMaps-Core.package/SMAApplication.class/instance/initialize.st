building
initialize

	| osmAssetName osmStream |
	super initialize.
	osmAssetName := 'assets/osm/hpi-k-campus-only.osm'.
	osmStream := self readStreamForOSMAssetNamed: osmAssetName.
	self
		tiledMapMorph: (SMAOSMMapBuilder fromOSMFile: osmStream);
		routingFacade: nil;
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		navigator: SMANavigator new;
		currentView: #search;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new;
		mensaMenuAPI: SMAOpenMensaMenuAPI new;
		startRouteSelectionIndex: 0;
		destinationRouteSelectionIndex: 0;
		searchSuggestionIndex: 0.

	self tiledMapMorph onDoubleClickAction: [:aPoint |
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)].
	self tiledMapMorph onOverlayClickAction: [:overlay |
		self selectCampusDetailTarget: overlay model]