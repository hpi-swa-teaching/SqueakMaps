building
showSavedRouteMenu

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'Route Options';
		 add: 'Show Route' target: self selector: #showSavedRoute;
		 add: 'Remove Route' target: self selector: #removeSavedRoute;
		 add: 'Rename Route' target: self selector: #renameSavedRoute;
		 popUpInWorld.