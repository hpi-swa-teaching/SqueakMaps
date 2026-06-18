building
initialize

	| osmAssetName osmStream routingOsmStream |
	super initialize.
	osmAssetName := 'assets/osm/hpi-k-campus-only.osm'.
	osmStream := SMADecoratedMapMorph readStreamForOSMAssetNamed: osmAssetName.
	routingOsmStream := SMADecoratedMapMorph readStreamForOSMAssetNamed: osmAssetName.
	self
		tiledMapMorph: (SMADecoratedMapMorph fromOSMFile: osmStream);
		routingGraph: nil;
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph);
		navigator: SMANavigator new;
		currentView: #directions;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new;
		mensaMenuAPI: SMAOpenMensaMenuAPI new;
		startRouteSelectionIndex: 0;
		destinationRouteSelectionIndex: 0.

	self tiledMapMorph onDoubleClickAction: [:aPoint |
		self searchLocationFromCoordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aPoint)].
	self tiledMapMorph onOverlayClickAction: [:overlay |
		self selectCampusDetailTarget: overlay model]