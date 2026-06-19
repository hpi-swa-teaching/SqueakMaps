building
showSavedRouteMenu

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'Route Options';
		 add: 'Remove Route' target: self selector: #removeSavedRoute;
		 add: 'Rename Route' target: self selector: #renameSavedRoute;
		 popUpInWorld.