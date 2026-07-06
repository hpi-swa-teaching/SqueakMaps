building
initialize

	super initialize.

	self
		navigator: SMANavigator new;
		currentView: #search;
		bingApi: SMABingMapsApi new;
		thunderforestMapsApi: SMAThunderforestMapsApi new;
		mensaMenuAPI: SMAOpenMensaMenuAPI new;
		searchSuggestionIndex: 0