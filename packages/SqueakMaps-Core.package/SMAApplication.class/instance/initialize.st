building
initialize

	| osmStream |
	super initialize.
	osmStream := SMADecoratedMapMorph readStreamForOSMAssetNamed: 'assets/osm/hpi-k-campus-only.osm'.
	self
		tiledMapMorph: (SMADecoratedMapMorph fromOSMFile: osmStream);
		routingGraph: (SMARoutingGraph fromMapMorph: self tiledMapMorph);
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		navigator: SMANavigator new;
		currentView: #directions;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new;
		startRouteSelectionIndex: 0;
		destinationRouteSelectionIndex: 0.

	self tiledMapMorph onDoubleClickAction: [:aPoint |
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)].
	self tiledMapMorph onOverlayClickAction: [:overlay |
		self selectCampusDetailTarget: overlay model]