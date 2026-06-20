building
buildSavedRoutesList: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #savedRoutes;
		getSelectionList: #isRouteSelected:;
		setSelectionList: #isRouteSelected:put:;
		help: 'Select routes to show on the map.';
		menu: #showSavedRouteMenu:;
		frame: (0 @ 0.58 corner: 1 @ 0.87);
		yourself
	
	