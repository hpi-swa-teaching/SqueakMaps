building
buildSavedRoutesList: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self model;
		list: #savedRoutes;
		getSelectionList: #isRouteSelected:;
		setSelectionList: #isRouteSelected:put:;
		help: 'Select routes to show on the map.';
		menu: #showSavedRouteMenu:;
		frame: (0 @ 0.75 corner: 1 @ 1);
		yourself
	
	