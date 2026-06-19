building
showSavedRouteMenu: aMenu

	"check if any index is selected doesnt work yet"
	(self routeSelectionList isEmpty) ifTrue: [^ nil].

	aMenu
		 addTitle: 'Route Options';
		 add: 'Remove Route' target: self selector: #removeSavedRoute;
		 add: 'Rename Route' target: self selector: #renameSavedRoute.
	
	^ aMenu