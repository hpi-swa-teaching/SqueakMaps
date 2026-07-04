building
initialize

	super initialize.

	self
		routingFacade: nil;
		navigator: SMANavigator new;
		currentView: #search;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new;
		mensaMenuAPI: SMAOpenMensaMenuAPI new;
		startRouteSelectionIndex: 0;
		destinationRouteSelectionIndex: 0;
		searchSuggestionIndex: 0