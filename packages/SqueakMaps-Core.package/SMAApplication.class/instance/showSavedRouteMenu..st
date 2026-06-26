building
showSavedRouteMenu: aMenu

	
	(self getSelectedSavedRoute isEmpty) ifTrue: [^nil].
	(self getSelectedSavedRoute size >= 2) ifTrue: [self inform: 'Please only select one route'. ^nil].

	aMenu
		 addTitle: 'Route Options';
		 add: 'Load Route' target: self selector: #showSavedRoute;
		 add: 'Rename Route' target: self selector: #renameSavedRoute;
		 add: 'Remove Route' target: self selector: #removeSavedRoute.
	
	^ aMenu